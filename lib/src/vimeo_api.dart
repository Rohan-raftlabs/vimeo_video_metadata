import 'package:vimeo_video_metadata/model/vimeo_metadata.dart';

abstract class IVimeoApi {
  Future<VimeoMetadata?> getVideoMetaByUrl(String url);

  Future<VimeoMetadata?> getVideoMetaById(String videoId);
}
