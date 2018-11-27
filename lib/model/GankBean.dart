import 'dart:convert' show json;

class GankToday {
  bool error;
  List<String> category;
  Category results;

  GankToday.fromParams({this.error, this.category, this.results});

  factory GankToday(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new GankToday.fromJson(json.decode(jsonStr))
          : new GankToday.fromJson(jsonStr);

  GankToday.fromJson(jsonRes) {
    error = jsonRes['error'];
    category = jsonRes['category'] == null ? null : [];

    for (var categoryItem in category == null ? [] : jsonRes['category']) {
      category.add(categoryItem);
    }

    results = jsonRes['results'] == null
        ? null
        : new Category.fromJson(jsonRes['results']);
  }

  @override
  String toString() {
    return '{"error": $error,"category": $category,"results": $results}';
  }
}

class Category {
  List<Android> android;
  List<App> app;
  List<IOS> iOS;
  List<BreakVideo> breakVideo;
  List<ExpandResources> expandResources;
  List<Recommended> recommended;
  List<Welfare> welfare;

  Category.fromParams(
      {this.android,
      this.app,
      this.iOS,
      this.breakVideo,
      this.expandResources,
      this.recommended,
      this.welfare});

  Category.fromJson(jsonRes) {
    android = jsonRes['android'] == null ? null : [];

    for (var androidItem in android == null ? [] : jsonRes['android']) {
      android
          .add(androidItem == null ? null : new Android.fromJson(androidItem));
    }

    app = jsonRes['app'] == null ? null : [];

    for (var appItem in app == null ? [] : jsonRes['app']) {
      app.add(appItem == null ? null : new App.fromJson(appItem));
    }

    iOS = jsonRes['iOS'] == null ? null : [];

    for (var iOSItem in iOS == null ? [] : jsonRes['iOS']) {
      iOS.add(iOSItem == null ? null : new IOS.fromJson(iOSItem));
    }

    breakVideo = jsonRes['休息视频'] == null ? null : [];

    for (var breakVideoItem in breakVideo == null ? [] : jsonRes['休息视频']) {
      breakVideo.add(breakVideoItem == null
          ? null
          : new BreakVideo.fromJson(breakVideoItem));
    }

    expandResources = jsonRes['拓展资源'] == null ? null : [];

    for (var expandResourcesItem
        in expandResources == null ? [] : jsonRes['拓展资源']) {
      expandResources.add(expandResourcesItem == null
          ? null
          : new ExpandResources.fromJson(expandResourcesItem));
    }

    recommended = jsonRes['瞎推荐'] == null ? null : [];

    for (var recommendedItem in recommended == null ? [] : jsonRes['瞎推荐']) {
      recommended.add(recommendedItem == null
          ? null
          : new Recommended.fromJson(recommendedItem));
    }

    welfare = jsonRes['福利'] == null ? null : [];

    for (var welfareItem in welfare == null ? [] : jsonRes['福利']) {
      welfare.add(welfareItem == null ? null : new Welfare.fromJson(welfareItem));
    }
  }

  @override
  String toString() {
    return '{"Android": $android,"App": $app,"iOS": $iOS,"休息视频": $breakVideo,"拓展资源": $expandResources,"瞎推荐": $recommended,"福利": $welfare}';
  }
}

class Welfare {
  String used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;

  Welfare.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who});

  Welfare.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
  }

  @override
  String toString() {
    return '{"used": ${used != null ? '${json.encode(used)}' : 'null'},"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'}}';
  }
}

class Recommended {
  bool used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;

  Recommended.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who});

  Recommended.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
  }

  @override
  String toString() {
    return '{"used": $used,"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'}}';
  }
}

class ExpandResources {
  bool used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;

  ExpandResources.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who});

  ExpandResources.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
  }

  @override
  String toString() {
    return '{"used": $used,"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'}}';
  }
}

class BreakVideo {
  bool used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;

  BreakVideo.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who});

  BreakVideo.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
  }

  @override
  String toString() {
    return '{"used": $used,"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'}}';
  }
}

class IOS {
  bool used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;
  List<String> images;

  IOS.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who,
      this.images});

  IOS.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
    images = jsonRes['images'] == null ? null : [];

    for (var imagesItem in images == null ? [] : jsonRes['images']) {
      images.add(imagesItem);
    }
  }

  @override
  String toString() {
    return '{"used": $used,"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'},"images": $images}';
  }
}

class App {
  bool used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;
  List<String> images;

  App.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who,
      this.images});

  App.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
    images = jsonRes['images'] == null ? null : [];

    for (var imagesItem in images == null ? [] : jsonRes['images']) {
      images.add(imagesItem);
    }
  }

  @override
  String toString() {
    return '{"used": $used,"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'},"images": $images}';
  }
}

class Android {
  String used;
  String id;
  String createdAt;
  String desc;
  String publishedAt;
  String source;
  String type;
  String url;
  String who;
  List<String> images;

  Android.fromParams(
      {this.used,
      this.id,
      this.createdAt,
      this.desc,
      this.publishedAt,
      this.source,
      this.type,
      this.url,
      this.who,
      this.images});

  Android.fromJson(jsonRes) {
    used = jsonRes['used'];
    id = jsonRes['_id'];
    createdAt = jsonRes['createdAt'];
    desc = jsonRes['desc'];
    publishedAt = jsonRes['publishedAt'];
    source = jsonRes['source'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    who = jsonRes['who'];
    images = jsonRes['images'] == null ? null : [];

    for (var imagesItem in images == null ? [] : jsonRes['images']) {
      images.add(imagesItem);
    }
  }

  @override
  String toString() {
    return '{"used": ${used != null ? '${json.encode(used)}' : 'null'},"_id": ${id != null ? '${json.encode(id)}' : 'null'},"createdAt": ${createdAt != null ? '${json.encode(createdAt)}' : 'null'},"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"publishedAt": ${publishedAt != null ? '${json.encode(publishedAt)}' : 'null'},"source": ${source != null ? '${json.encode(source)}' : 'null'},"type": ${type != null ? '${json.encode(type)}' : 'null'},"url": ${url != null ? '${json.encode(url)}' : 'null'},"who": ${who != null ? '${json.encode(who)}' : 'null'},"images": $images}';
  }
}
