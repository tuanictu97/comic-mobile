import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:truyentranh/src/model/model.dart';

List<Comic> listComic = [
      Comic(
        bannerUrl: "",
        posterUrl: "assets/images/comic01.jpg",
        name: "Comic 1",
        ortherName: "Orther Name 1",
        rate: 4.2,
        latestChapter: Chaper(
          name: "Chapter 123",
          slug: "url-slug-chapter"
        )
      ),
      Comic(
        bannerUrl: "",
        posterUrl: "assets/images/comic02.jpg",
        name: "Comic 2",
        ortherName: "Orther Name 2",
        rate: 4.2,
        latestChapter: Chaper(
          name: "Chapter 123",
          slug: "url-slug-chapter"
        )
      ),
      Comic(
        bannerUrl: "",
        posterUrl: "assets/images/comic03.jpg",
        name: "Comic 3",
        ortherName: "Orther Name 3",
        rate: 4.2,
        latestChapter: Chaper(
          name: "Chapter 123",
          slug: "url-slug-chapter"
        )
      ),
      Comic(
        bannerUrl: "",
        posterUrl: "assets/images/comic04.jpg",
        name: "Comic 4",
        ortherName: "Orther name 4",
        rate: 4.2,
        latestChapter: Chaper(
          name: "Chapter 123",
          slug: "url-slug-chapter"
        )
      ),
      Comic(
        bannerUrl: "",
        posterUrl: "assets/images/comic05.jpg",
        name: "Comic 5",
        ortherName: "Orther name 5",
        rate: 4.2,
        latestChapter: Chaper(
          name: "Chapter 123",
          slug: "url-slug-chapter"
        )
      ),
      Comic(
        bannerUrl: "",
        posterUrl: "assets/images/comic06.jpg",
        name: "Comic 6",
        ortherName: "Orther name 6",
        rate: 4.2,
        latestChapter: Chaper(
          name: "Chapter 123",
          slug: "url-slug-chapter"
        )
      )
  ];

class ComicCarousel extends StatefulWidget {
  @override
  _ComicCarouselState createState() => _ComicCarouselState();
}

class _ComicCarouselState extends State<ComicCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 340.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listComic.length,
            itemBuilder: (BuildContext context, int index) {
              Comic comic = listComic[index];
              return GestureDetector(
                onTap: (){
                  print("tap cc");
                },
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  comic.name,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  comic.latestChapter.name,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: comic.posterUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 220.0,
                                  width: 180.0,
                                  image: AssetImage(comic.posterUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "123 123",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.locationArrow,
                                        size: 10.0,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        "123",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}