class MusicListModel {

  int? resultCount;
  List<MusicModel?>? results;

  MusicListModel({
    this.resultCount,
    this.results,
  });
  MusicListModel.fromJson(Map<String, dynamic> json) {
    resultCount = json["resultCount"]?.toInt();
  if (json["results"] != null) {
  final v = json["results"];
  final arr0 = <MusicModel>[];
  v.forEach((v) {
  arr0.add(MusicModel.fromJson(v));
  });
    results = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["resultCount"] = resultCount;
    if (results != null) {
      final v = results;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["results"] = arr0;
    }
    return data;
  }
}

class MusicModel {

  String? wrapperType;
  String? kind;
  int? artistId;
  int? collectionId;
  int? trackId;
  String? artistName;
  String? collectionName;
  String? trackName;
  String? collectionCensoredName;
  String? trackCensoredName;
  String? artistViewUrl;
  String? collectionViewUrl;
  String? trackViewUrl;
  String? previewUrl;
  String? artworkUrl30;
  String? artworkUrl60;
  String? artworkUrl100;
  double? collectionPrice;
  double? trackPrice;
  String? releaseDate;
  String? collectionExplicitness;
  String? trackExplicitness;
  int? discCount;
  int? discNumber;
  int? trackCount;
  int? trackNumber;
  int? trackTimeMillis;
  String? country;
  String? currency;
  String? primaryGenreName;
  bool? isStreamable;

  MusicModel({
    this.wrapperType,
    this.kind,
    this.artistId,
    this.collectionId,
    this.trackId,
    this.artistName = 'No artist available',
    this.collectionName,
    this.trackName = 'No title available',
    this.collectionCensoredName,
    this.trackCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
    this.isStreamable,
  });
  MusicModel.fromJson(Map<String, dynamic> json) {
    wrapperType = json["wrapperType"]?.toString();
    kind = json["kind"]?.toString();
    artistId = json["artistId"]?.toInt();
    collectionId = json["collectionId"]?.toInt();
    trackId = json["trackId"]?.toInt();
    artistName = json["artistName"]?.toString();
    collectionName = json["collectionName"]?.toString();
    trackName = json["trackName"]?.toString();
    collectionCensoredName = json["collectionCensoredName"]?.toString();
    trackCensoredName = json["trackCensoredName"]?.toString();
    artistViewUrl = json["artistViewUrl"]?.toString();
    collectionViewUrl = json["collectionViewUrl"]?.toString();
    trackViewUrl = json["trackViewUrl"]?.toString();
    previewUrl = json["previewUrl"]?.toString();
    artworkUrl30 = json["artworkUrl30"]?.toString();
    artworkUrl60 = json["artworkUrl60"]?.toString();
    artworkUrl100 = json["artworkUrl100"]?.toString();
    collectionPrice = json["collectionPrice"]?.toDouble();
    trackPrice = json["trackPrice"]?.toDouble();
    releaseDate = json["releaseDate"]?.toString();
    collectionExplicitness = json["collectionExplicitness"]?.toString();
    trackExplicitness = json["trackExplicitness"]?.toString();
    discCount = json["discCount"]?.toInt();
    discNumber = json["discNumber"]?.toInt();
    trackCount = json["trackCount"]?.toInt();
    trackNumber = json["trackNumber"]?.toInt();
    trackTimeMillis = json["trackTimeMillis"]?.toInt();
    country = json["country"]?.toString();
    currency = json["currency"]?.toString();
    primaryGenreName = json["primaryGenreName"]?.toString();
    isStreamable = json["isStreamable"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["wrapperType"] = wrapperType;
    data["kind"] = kind;
    data["artistId"] = artistId;
    data["collectionId"] = collectionId;
    data["trackId"] = trackId;
    data["artistName"] = artistName;
    data["collectionName"] = collectionName;
    data["trackName"] = trackName;
    data["collectionCensoredName"] = collectionCensoredName;
    data["trackCensoredName"] = trackCensoredName;
    data["artistViewUrl"] = artistViewUrl;
    data["collectionViewUrl"] = collectionViewUrl;
    data["trackViewUrl"] = trackViewUrl;
    data["previewUrl"] = previewUrl;
    data["artworkUrl30"] = artworkUrl30;
    data["artworkUrl60"] = artworkUrl60;
    data["artworkUrl100"] = artworkUrl100;
    data["collectionPrice"] = collectionPrice;
    data["trackPrice"] = trackPrice;
    data["releaseDate"] = releaseDate;
    data["collectionExplicitness"] = collectionExplicitness;
    data["trackExplicitness"] = trackExplicitness;
    data["discCount"] = discCount;
    data["discNumber"] = discNumber;
    data["trackCount"] = trackCount;
    data["trackNumber"] = trackNumber;
    data["trackTimeMillis"] = trackTimeMillis;
    data["country"] = country;
    data["currency"] = currency;
    data["primaryGenreName"] = primaryGenreName;
    data["isStreamable"] = isStreamable;
    return data;
  }
}

