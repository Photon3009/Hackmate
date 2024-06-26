import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: kPadding * 2,
          ),
          CircleAvatar(
            radius: kPadding * 8,
            child: AuthCubit.instance.state.user?.avatar == null
                ? const Icon(Icons.person)
                : ClipRRect(
                    borderRadius: BorderRadius.circular(kPadding * 8),
                    child: CachedNetworkImage(
                      imageUrl: AuthCubit.instance.state.user!.avatar!,
                      httpHeaders: AuthCubit.instance.state.user!.avatar!
                              .startsWith(kApiEndpoint)
                          ? null
                          : const {
                              'X-Appwrite-Project': kProjectId,
                            },
                      imageBuilder: (context, imageProvider) => Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AuthCubit.instance.state.user?.name ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                width: kPadding * 2,
              ),
              IconButton(
                onPressed: () {
                  navigateToProfileEditPage(context);
                },
                icon: const Icon(
                  Icons.edit,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          Padding(
            padding: const EdgeInsets.all(
              kPadding * 2,
            ),
            child: Column(
              children: [
                _ProfileListTile(
                  onTap: () {
                    navigateToProfileEditPage(context);
                  },
                  title: 'Personal Information',
                ),
                const SizedBox(
                  height: kPadding,
                ),
                _ProfileListTile(
                  onTap: () {
                    navigateToProfileEditPage(context);
                  },
                  title: 'Skills & Interests',
                ),
                const SizedBox(
                  height: kPadding,
                ),
                _ProfileListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LicensePage(),
                      ),
                    );
                  },
                  title: 'Open Source Licenses',
                ),
                const SizedBox(
                  height: kPadding,
                ),
                _ProfileListTile(
                  onTap: () {
                    AuthCubit.instance.logout();
                  },
                  title: 'Logout',
                ),
              ],
            ),
          ),
        ],
      );

  void navigateToProfileEditPage(BuildContext context) {
    context.router.push(
      const UserSurveyProfileRoute(),
    );
  }
}

class _ProfileListTile extends StatelessWidget {
  const _ProfileListTile({required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: theme.textTheme.titleMedium
            ?.copyWith(color: theme.primaryColor, fontSize: 18),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
