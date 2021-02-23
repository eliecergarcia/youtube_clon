
class VideoCard {
  String title;
  String duration;
  String views;
  String thumbnail;
  String nameChannel;
  VideoCard(
      this.duration, this.nameChannel, this.thumbnail, this.title, this.views);

  String viewsVideo(int views) {
    String viewString = this.views.toString();
    String value = '';
    if (viewString.length >= 10) {
      value = "B";
      viewString = viewCompress([11, 12], viewString);
    } else if (viewString.length >= 7) {
      value = 'M';
      viewString = viewCompress([8, 9], viewString);
    } else if (viewString.length >= 4) {
      value = 'K';
      viewString = viewCompress([5, 6], viewString);
    }
    return viewString + value;
  }

  String viewCompress(List<int> numbers, String view) {
    if (view.length == numbers[0]) {
      view = view.substring(0, 3);
    } else if (view.length == numbers[1]) {
      view = view.substring(0, 2);
    } else {
      String newString = view.substring(0, 1);
      view = newString + '.' + view.substring(1, 2);
    }
    return view;
  }
}
