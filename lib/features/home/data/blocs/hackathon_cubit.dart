import 'package:appwrite/appwrite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/features/app/data/api_client.dart';
import 'package:hackmate/features/home/data/model/hackathon_model.dart';
import 'package:hackmate/utils/environment_helper.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'hackathon_cubit.freezed.dart';
part 'hackathon_cubit.g.dart';

@freezed
class HackathonState with _$HackathonState {
  const factory HackathonState({
    @Default([]) List<HackathonModel> hackathons,
    @Default(false) bool isLoading,
  }) = _HackathonState;

  factory HackathonState.fromJson(Map<String, dynamic> json) =>
      _$HackathonStateFromJson(json);
}

class HackathonCubit extends HydratedCubit<HackathonState> {
  HackathonCubit() : super(const HackathonState());

  Databases? _database;

  void initialize(ApiClient apiClient) {
    if (_database != null) {
      return;
    }
    _database = apiClient.databases;
  }

  Future<void> loadHackathons() async {
    emit(state.copyWith(isLoading: true));

    try {
      final documents = await _database!.listDocuments(
        collectionId: kHackathonsCollection,
        databaseId: EnvironmentHelper().getDatabaseId(),
        queries: [],
      );

      final models = documents.documents
          .map<HackathonModel>((doc) => HackathonModel.fromJson(doc.data))
          .toList();

      emit(state.copyWith(hackathons: models));
    } catch (e) {
      rethrow;
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  @override
  HackathonState? fromJson(Map<String, dynamic> json) =>
      HackathonState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(HackathonState state) => state.toJson();
}
