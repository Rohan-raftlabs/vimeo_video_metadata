import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:vimeo_video_metadata/model/vimeo_metadata.dart';
import 'package:vimeo_video_metadata/src/vimeo_api.dart' show IVimeoApi;

class VimeoApi2025Impl implements IVimeoApi {
  static const String baseUrl = "https://vimeo.com/api/oembed.json";

  // sample curl = curl "https://vimeo.com/api/oembed.json?url=https://vimeo.com/718338402"

  @override
  Future<VimeoMetadata?> getVideoMetaByUrl(String url) async {
    try {
      if (!url.contains("vimeo.com")) {
        throw Exception("Invalid url : Not a vimeo url $url");
      }
      final metaRequestUrl = "$baseUrl?url=$url";
      final uri = Uri.tryParse(metaRequestUrl);
      if (uri == null) {
        throw Exception("Invalid url : Unable to parse to uri");
      }
      final response = await http
          .get(uri)
          .timeout(
            Duration(seconds: timeoutInSeconds),
            onTimeout: () {
              throw Exception("Vimeo API Request Timed Out");
            },
          );
      if (response.statusCode == 200) {
        return VimeoMetadata.fromJson(jsonDecode(response.body));
      }
      log("Error in getVideoMetaByUrl ${response.statusCode} ${response.body}");
      return null;
    } catch (e, st) {
      log("Error in getVideoMetaById $e $st");
      return null;
    }
  }

  @override
  Future<VimeoMetadata?> getVideoMetaById(String videoId) async {
    final videoUrl = "https://vimeo.com/$videoId";
    return await getVideoMetaByUrl(videoUrl);
  }

  int timeoutInSeconds = 30;

  VimeoApi2025Impl({required this.timeoutInSeconds});
}
