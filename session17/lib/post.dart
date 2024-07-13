class Post {
  String? title;
  String? body;
  int? id;
  Post({this.title, this.body, this.id});
  factory Post.formJson(Map<String, dynamic> input) {
    return Post(title: input['title'], body: input['body'], id: input['id']);
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
