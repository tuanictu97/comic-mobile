
import 'model.dart';

class Comic{
  final String posterUrl;
  final String bannerUrl;
  final String name;
  final String ortherName;
  final bool hot;
  final double rate;
  final Chaper latestChapter;
  final List<Category> listCategory;
  final String storyLine;

  Comic({
    this.bannerUrl, 
    this.name, 
    this.ortherName, 
    this.rate, 
    this.latestChapter, 
    this.hot,
    this.posterUrl,
    this.listCategory,
    this.storyLine
  });
}