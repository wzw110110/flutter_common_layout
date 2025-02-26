import 'package:common_ui/feature/home/data/home_article_list_item.dart';
import 'package:flutter/material.dart';

class HomeListItemView extends StatelessWidget {
  const HomeListItemView({super.key, required this.data});

  final HomeArticleListItem data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(data.title,style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              Text(data.superChapterName,style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
      ),
    );
  }
}
