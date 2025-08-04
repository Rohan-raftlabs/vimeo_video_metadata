library vimeo_video_metadata;

import 'package:vimeo_video_metadata/src/vimeo_api.dart';
import 'package:vimeo_video_metadata/src/vimeo_api_2025_impl.dart'
    show VimeoApi2025Impl;

IVimeoApi getVimeoMetaInstance({int timeoutInSeconds = 30}) {
  return VimeoApi2025Impl(timeoutInSeconds: timeoutInSeconds);
}
