// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_article_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeArticleListItemImpl _$$HomeArticleListItemImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeArticleListItemImpl(
      adminAdd: json['adminAdd'] as bool,
      apkLink: json['apkLink'] as String,
      audit: (json['audit'] as num).toInt(),
      author: json['author'] as String,
      canEdit: json['canEdit'] as bool,
      chapterId: (json['chapterId'] as num).toInt(),
      chapterName: json['chapterName'] as String,
      collect: json['collect'] as bool,
      courseId: (json['courseId'] as num).toInt(),
      desc: json['desc'] as String,
      descMd: json['descMd'] as String,
      envelopePic: json['envelopePic'] as String,
      fresh: json['fresh'] as bool,
      host: json['host'] as String,
      id: (json['id'] as num).toInt(),
      isAdminAdd: json['isAdminAdd'] as bool,
      link: json['link'] as String,
      niceDate: json['niceDate'] as String,
      niceShareDate: json['niceShareDate'] as String,
      origin: json['origin'] as String,
      prefix: json['prefix'] as String,
      projectLink: json['projectLink'] as String,
      publishTime: (json['publishTime'] as num).toInt(),
      realSuperChapterId: (json['realSuperChapterId'] as num).toInt(),
      selfVisible: (json['selfVisible'] as num).toInt(),
      shareDate: (json['shareDate'] as num).toInt(),
      shareUser: json['shareUser'] as String,
      superChapterId: (json['superChapterId'] as num).toInt(),
      superChapterName: json['superChapterName'] as String,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ArticleTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      type: (json['type'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      visible: (json['visible'] as num).toInt(),
      zan: (json['zan'] as num).toInt(),
    );

Map<String, dynamic> _$$HomeArticleListItemImplToJson(
        _$HomeArticleListItemImpl instance) =>
    <String, dynamic>{
      'adminAdd': instance.adminAdd,
      'apkLink': instance.apkLink,
      'audit': instance.audit,
      'author': instance.author,
      'canEdit': instance.canEdit,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'descMd': instance.descMd,
      'envelopePic': instance.envelopePic,
      'fresh': instance.fresh,
      'host': instance.host,
      'id': instance.id,
      'isAdminAdd': instance.isAdminAdd,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'niceShareDate': instance.niceShareDate,
      'origin': instance.origin,
      'prefix': instance.prefix,
      'projectLink': instance.projectLink,
      'publishTime': instance.publishTime,
      'realSuperChapterId': instance.realSuperChapterId,
      'selfVisible': instance.selfVisible,
      'shareDate': instance.shareDate,
      'shareUser': instance.shareUser,
      'superChapterId': instance.superChapterId,
      'superChapterName': instance.superChapterName,
      'tags': instance.tags,
      'title': instance.title,
      'type': instance.type,
      'userId': instance.userId,
      'visible': instance.visible,
      'zan': instance.zan,
    };

_$ArticleTagImpl _$$ArticleTagImplFromJson(Map<String, dynamic> json) =>
    _$ArticleTagImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ArticleTagImplToJson(_$ArticleTagImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
