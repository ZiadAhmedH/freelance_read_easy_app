// create a class BookModel

class BookModel {
 final String? title;
 final String? author;
 final String? description;
 final String? imageUrl;

  BookModel(
      {required this.title, required this.author, required this.description, required this.imageUrl});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'],
      author: json['author'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }


}

