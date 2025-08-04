class VimeoMetadata {
  // sample response

  // {
  // "type": "video",
  // "version": "1.0",
  // "provider_name": "Vimeo",
  // "provider_url": "https:\/\/vimeo.com\/",
  // "title": "Stray in Kars",
  // "author_name": "Aeon Video",
  // "author_url": "https:\/\/vimeo.com\/aeonvideo",
  // "is_plus": "0",
  // "account_type": "custom",
  // "html": "<iframe src=\"https:\/\/player.vimeo.com\/video\/718338402?app_id=122963\" width=\"426\" height=\"240\" frameborder=\"0\" allow=\"autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" title=\"Stray in Kars\"><\/iframe>",
  // "width": 426,
  // "height": 240,
  // "duration": 568,
  // "description": "Street dogs in the ancient city of Kars roam free, fight and and occasionally join in the humans\u2019 call to prayer.\n\nDirector: Elizabeth Lo (https:\/\/www.elizabeth-lo.com\/)\nProducer: Shane Boris\nCo-producers: Ceylan Carhoglu, Zeynep Koprulu\nAssociate producer: Zeynep Aslanoba\nExecutive producer: Ina Fichman\nSound designer: Ernst Karel\nComposer: Ali Helnwein \nColorist: Robert Arnold\n\nMore on this film: https:\/\/aeon.co\/videos\/what-the-ancient-city-of-kars-looks-like-from-the-perspective-of-its-stray-dogs\nWatch more free videos on Aeon: https:\/\/aeon.co\/videos\nSubscribe: vimeo.com\/aeonvideo",
  // "thumbnail_url": "https:\/\/i.vimeocdn.com\/video\/1447278610-2acc1a5f751c6dc07e7ae153afb699caf2968fc23a9c72f84f9c952e4b27f969-d_295x166?region=us",
  // "thumbnail_width": 295,
  // "thumbnail_height": 166,
  // "thumbnail_url_with_play_button": "https:\/\/i.vimeocdn.com\/filter\/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F1447278610-2acc1a5f751c6dc07e7ae153afb699caf2968fc23a9c72f84f9c952e4b27f969-d_295x166%3Fregion%3Dus&src1=http%3A%2F%2Ff.vimeocdn.com%2Fp%2Fimages%2Fcrawler_play.png",
  // "upload_date": "2022-06-08 10:43:34",
  // "video_id": 718338402,
  // "uri": "\/videos\/718338402"
  // }

  final String? type;
  final String? version;
  final String? providerName;
  final String? providerUrl;
  final String? title;
  final String? authorName;
  final String? authorUrl;
  final String? isPlus;
  final String? accountType;
  final String? html;
  final int? width;
  final int? height;
  final int? duration;
  final String? description;
  final String? thumbnailUrl;
  final int? thumbnailWidth;
  final int? thumbnailHeight;
  final String? thumbnailUrlWithPlayButton;
  final String? uploadDate;
  final int? videoId;
  final String? uri;

  VimeoMetadata({
    this.type,
    this.version,
    this.providerName,
    this.providerUrl,
    this.title,
    this.authorName,
    this.authorUrl,
    this.isPlus,
    this.accountType,
    this.html,
    this.width,
    this.height,
    this.duration,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.thumbnailUrlWithPlayButton,
    this.uploadDate,
    this.videoId,
    this.uri,
  });

  factory VimeoMetadata.fromJson(Map<String, dynamic> json) {
    return VimeoMetadata(
      type: json["type"],
      version: json["version"],
      providerName: json["provider_name"],
      providerUrl: json["provider_url"],
      title: json["title"],
      authorName: json["author_name"],
      authorUrl: json["author_url"],
      isPlus: json["is_plus"],
      accountType: json["account_type"],
      html: json["html"],
      width: json["width"],
      height: json["height"],
      duration: json["duration"],
      description: json["description"],
      thumbnailUrl: json["thumbnail_url"],
      thumbnailWidth: json["thumbnail_width"],
      thumbnailHeight: json["thumbnail_height"],
      thumbnailUrlWithPlayButton: json["thumbnail_url_with_play_button"],
      uploadDate: json["upload_date"],
      videoId: json["video_id"],
      uri: json["uri"],
    );
  }
}
