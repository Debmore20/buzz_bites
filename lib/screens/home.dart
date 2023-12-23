import 'package:buzz_bites/components/bottom_nav.dart';
import 'package:buzz_bites/components/carousel_builder.dart';
import 'package:buzz_bites/components/custom_tag.dart';
import 'package:buzz_bites/components/image_container.dart';
import 'package:buzz_bites/models/article_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    List<Article> articles = Article.articles;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
      ),
      bottomNavigationBar: const BottomNav(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          ImageContainer(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            imageUrl: articles[0].imageUrl,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(0),
            bottomBorderRadius: 30,
            topBorderRadius: 0,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTag(
                      bgColor: Colors.grey.withAlpha(150),
                      padding: const EdgeInsets.all(10),
                      borderRadius: 10,
                      children: [
                        Text(
                          "Today's Headline",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        )
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    articles[0].title,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 28),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Learn More',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 16,
                                      color: const Color.fromARGB(
                                          255, 200, 200, 200))),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.arrow_right_alt_rounded,
                              color: Color.fromARGB(255, 200, 200, 200))
                        ],
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Breaking News',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('See more'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            height: 250,
            child: CarouselBuilder(articles: articles),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'World News',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('See more'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            height: 250,
            child: CarouselBuilder(articles: articles),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Politics',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('See more'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            height: 250,
            child: CarouselBuilder(articles: articles),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Finance',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('See more'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            height: 250,
            child: CarouselBuilder(articles: articles),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Sports',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('See more'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            height: 250,
            child: CarouselBuilder(articles: articles),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Entertainment',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('See more'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            height: 250,
            child: CarouselBuilder(articles: articles),
          ),
        ],
      ),
    );
  }
}
