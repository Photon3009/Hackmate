import 'package:appwrite/appwrite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackmate/configurations/constants/constants.dart';
import 'package:hackmate/features/home/data/model/banner_model.dart';
import 'package:hackmate/utils/environment_helper.dart';
import 'package:hackmate/utils/mixins/cubit_maybe_emit_mixin.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../app/data/api_client.dart';

part 'banner_cubit.freezed.dart';
part 'banner_cubit.g.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState({
    @Default([]) List<BannerModel> models,
    @Default(false) bool isLoading,
  }) = _BannerState;

  factory BannerState.fromJson(Map<String, dynamic> json) =>
      _$BannerStateFromJson(json);
}

class BannerCubit extends HydratedCubit<BannerState> with CubitMaybeEmit {
  BannerCubit() : super(const BannerState());

  Databases? _database;

  void initialize(ApiClient apiClient) {
    if (_database != null) {
      return;
    }
    _database = apiClient.databases;
  }

  Future<void> loadBanners() async {
    emit(state.copyWith(isLoading: true));

    try {
      final documents = await _database!.listDocuments(
        collectionId: kBannersCollection,
        databaseId: EnvironmentHelper().getDatabaseId(),
        queries: [
          // Query.equal('active', true),
        ],
      );

      final models = documents.documents
          .map<BannerModel>((doc) => BannerModel.fromJson(doc.data))
          .toList();

      emit(state.copyWith(models: models));
    } catch (e) {
      rethrow;
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  @override
  BannerState? fromJson(Map<String, dynamic> json) =>
      BannerState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(BannerState state) => state.toJson();
}
