import 'package:hackmate/utils/environment_helper.dart';

import '../configurations/configurations.dart';

String getStorageFileUrl(String fileId) => '$kApiEndpoint/storage/buckets/'
    '${EnvironmentHelper().getStorageBucketId()}/'
    'files/$fileId/view';
