import 'package:buzz_bites/components/image_container.dart';
import 'package:buzz_bites/models/article_model.dart';
import 'package:flutter/material.dart';


class CarouselBuilder extends StatelessWidget {
  const CarouselBuilder({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.5,
          margin: const EdgeInsets.only(right: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageContainer(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.5,
                  imageUrl: articles[index].imageUrl,
                  bottomBorderRadius: 20,
                  topBorderRadius: 20,
                  child: const Text(''),
                ),
                Text(
                  articles[index].title,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                ),
                Text(
                  articles[index].subtitle,
                  maxLines: 2,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                ),
                Text(
                  '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text('by: ${articles[index].author}',
                    style: TextStyle(color: Colors.grey[600])),
              ]),
        );
      },
    );
  }
}
