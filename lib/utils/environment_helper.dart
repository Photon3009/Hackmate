import '../configurations/configurations.dart';

class EnvironmentHelper {
  String getDatabaseId() => getEnvId();

  String getStorageBucketId() => getEnvId();

  String getEnvId() => envIdDev;
}
