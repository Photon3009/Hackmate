import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/configurations/constants/constants.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/configurations/theme/size_constants.dart';
import 'package:hackmate/features/app/presentation/hackmate_image_picker.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_base_wrapper.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class UserSurveyProfilePage extends StatelessWidget {
  const UserSurveyProfilePage({super.key});

  FormGroup _formBuilder() => fb.group({
        kNameField: FormControl<String>(
          validators: [
            Validators.required,
          ],
          value: AuthCubit.instance.state.user?.name,
        ),
        kEmailField: FormControl<String>(
          validators: [
            Validators.required,
            Validators.email,
          ],
          value: AuthCubit.instance.state.user?.email,
        ),
        kCourseField: FormControl<String>(
          validators: [
            Validators.required,
          ],
          value: AuthCubit.instance.state.user?.course,
        ),
        kCollegeNameField: FormControl<String>(
          validators: [
            Validators.required,
          ],
          value: AuthCubit.instance.state.user?.collegeName,
        ),
        kGradYearField: FormControl<String>(
          validators: [
            Validators.required,
            Validators.minLength(4),
            Validators.maxLength(4),
            Validators.number,
          ],
          value: AuthCubit.instance.state.user?.graduationYear,
        ),
        kBioField: FormControl<String>(
          validators: [
            Validators.required,
          ],
          value: AuthCubit.instance.state.user?.bio,
        ),
      });

  final textBoxSpacing = const SizedBox(
    height: kPadding * 1.5,
  );

  @override
  Widget build(BuildContext context) => ReactiveFormBuilder(
        form: _formBuilder,
        builder: (context, form, child) => UserSurveyBaseWrapper(
          confirmButtonText: 'Confirm',
          hasReactiveForm: true,
          onConfirm: () async {
            print("onconfirm1");
            final authState = AuthCubit.instance.state;

            if (authState.pickedImagePath == null &&
                authState.user?.avatar == null) {
              throw Exception('Please pick a profile picture');
            }

            if (authState.pickedImagePath != null) {
              await AuthCubit.instance.uploadUserImage();
            }
            print("onconfirm2");
            await submitForm(form);
          },
          onSuccess: () {
            context.read<AuthCubit>().markUserSurveyAttempted();
            DjangoflowAppSnackbar.showInfo('Profile updated successfully');
            context.router.push(const UserSurveySkillsRoute());
          },
          body: AutofillGroup(
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: kPadding),
                children: [
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      final authCubit = context.read<AuthCubit>();
                      return Align(
                        alignment: Alignment.center,
                        child: HackmateImagePicker(
                          pickedImagePath: state.pickedImagePath,
                          imageUrl: AuthCubit.instance.state.user?.avatar,
                          onImagePicked: (image) => context
                              .read<AuthCubit>()
                              .updatePickedPhoto(image),
                          clearImageCallback: () =>
                              authCubit.clearPickedPhoto(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: kPadding * 4,
                  ),
                  ReactiveTextField<String>(
                    formControlName: kNameField,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Name must not be empty',
                    },
                    autofillHints: const [AutofillHints.name],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kEmailField,
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'The email must not be empty',
                      ValidationMessage.email: (_) =>
                          'Please enter a valid email',
                    },
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kCourseField,
                    decoration: const InputDecoration(
                      labelText: 'Course',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Course must not be empty',
                    },
                    autofillHints: const ['course name'],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kCollegeNameField,
                    decoration: const InputDecoration(
                      labelText: 'College Name',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'College name must not be empty',
                    },
                    autofillHints: const [AutofillHints.organizationName],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kGradYearField,
                    decoration: const InputDecoration(
                      labelText: 'Graduation Year',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Graduation year must not be empty',
                      ValidationMessage.number: (_) =>
                          'Please enter a valid Graduation year',
                      ValidationMessage.minLength: (_) =>
                          'Please enter a valid Graduation year',
                      ValidationMessage.maxLength: (_) =>
                          'Please enter a valid Graduation year',
                    },
                    keyboardType: TextInputType.number,
                    autofillHints: const [kGradYearField],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kBioField,
                    decoration: const InputDecoration(
                      labelText: 'Bio',
                    ),
                    minLines: 5,
                    maxLines: 10,
                    autofillHints: const [kBioField],
                    textInputAction: TextInputAction.done,
                  ),
                  textBoxSpacing,
                ],
              ),
            ),
          ),
        ),
      );

  Future<void> submitForm(FormGroup form) async {
    print("submit");
    if (form.valid) {
      Map<String, dynamic> formValues = form.value;
      final name = formValues[kNameField] as String;
      final email = formValues[kEmailField] as String;
      final course = formValues[kCourseField] as String;
      final collegeName = formValues[kCollegeNameField] as String;
      final gradYear = formValues[kGradYearField] as String;
      final bio = formValues[kBioField] as String;
      print("form submit");
      await AuthCubit.instance.updateProfile(
        name: name,
        email: email,
        course: course,
        collegeName: collegeName,
        graduationYear: gradYear,
        bio: bio,
      );
    } else {
      form.markAllAsTouched();
    }
  }
}
