// ignore_for_file: unnecessary_this

class Post {
  String body;
  String author;
  int likes = 0;
  bool isLiked = false;

  Post(this.body, this.author);

  void likePost() {
    this.isLiked = !this.isLiked;

    if (this.isLiked) {
      this.likes += 1;
    } else {
      this.likes -= 1;
    }
  }
}
