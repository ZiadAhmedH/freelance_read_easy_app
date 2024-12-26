import 'dart:convert';

class Book {
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final String genre;
  final double rating;
  final int publicationYear;
  final String publisher;

  const Book({
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.genre,
    required this.rating,
    required this.publicationYear,
    required this.publisher,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      genre: json['genre'] as String,
      rating: json['rating'] as double,
      publicationYear: json['publicationYear'] as int,
      publisher: json['publisher'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'description': description,
      'imageUrl': imageUrl,
      'genre': genre,
      'rating': rating,
      'publicationYear': publicationYear,
      'publisher': publisher,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Book &&
              runtimeType == other.runtimeType &&
              title == other.title &&
              author == other.author;

  @override
  int get hashCode => title.hashCode ^ author.hashCode;

  @override
  String toString() {
    return 'Book{title: $title, author: $author, genre: $genre, rating: $rating, publicationYear: $publicationYear, publisher: $publisher}';
  }

  Book copyWith({
    String? title,
    String? author,
    String? description,
    String? imageUrl,
    String? genre,
    double? rating,
    int? publicationYear,
    String? publisher,
  }) {
    return Book(
      title: title ?? this.title,
      author: author ?? this.author,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      genre: genre ?? this.genre,
      rating: rating ?? this.rating,
      publicationYear: publicationYear ?? this.publicationYear,
      publisher: publisher ?? this.publisher,
    );
  }
}

class BookList {
  final List<Book> books;

  const BookList(this.books);

  factory BookList.fromJson(String jsonString) {
    final List<dynamic> jsonList = json.decode(jsonString) as List<dynamic>;
    final books = jsonList.map((json) => Book.fromJson(json as Map<String, dynamic>)).toList();
    return BookList(books);
  }

  String toJson() {
    final List<Map<String, dynamic>> jsonList = books.map((book) => book.toJson()).toList();
    return json.encode(jsonList);
  }
}
class BookData {
  static const String jsonData = '''
[
  {
    "title": "Project Hail Mary",
    "author": "Andy Weir",
    "description": "A lone astronaut must save humanity from an extinction-level threat while suffering from amnesia.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389354-L.jpg",
    "genre": "Science Fiction",
    "rating": 4.52,
    "publicationYear": 2021,
    "publisher": "Ballantine Books"
  },
  {
    "title": "Dune",
    "author": "Frank Herbert",
    "description": "A complex tale of politics, religion, and ecology on a desert planet that holds the universe's most valuable resource.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8267470-L.jpg",
    "genre": "Science Fiction",
    "rating": 4.23,
    "publicationYear": 1965,
    "publisher": "Chilton Books"
  },
  {
    "title": "The Invisible Life of Addie LaRue",
    "author": "V.E. Schwab",
    "description": "A woman makes a Faustian bargain to live forever but is cursed to be forgotten by everyone she meets.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389355-L.jpg",
    "genre": "Fantasy",
    "rating": 4.23,
    "publicationYear": 2020,
    "publisher": "Tor Books"
  },
  {
    "title": "Klara and the Sun",
    "author": "Kazuo Ishiguro",
    "description": "An Artificial Friend observes the human world while hoping to find a home.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389356-L.jpg",
    "genre": "Literary Fiction",
    "rating": 3.85,
    "publicationYear": 2021,
    "publisher": "Knopf"
  },
  {
    "title": "The Seven Husbands of Evelyn Hugo",
    "author": "Taylor Jenkins Reid",
    "description": "An aging Hollywood starlet recounts her scandalous life story to an unknown journalist.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389357-L.jpg",
    "genre": "Historical Fiction",
    "rating": 4.45,
    "publicationYear": 2017,
    "publisher": "Atria Books"
  },
  {
    "title": "The House in the Cerulean Sea",
    "author": "TJ Klune",
    "description": "A case worker at the Department of Magical Youth visits a mysterious orphanage.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389358-L.jpg",
    "genre": "Fantasy",
    "rating": 4.47,
    "publicationYear": 2020,
    "publisher": "Tor Books"
  },
  {
    "title": "Mexican Gothic",
    "author": "Silvia Moreno-Garcia",
    "description": "A young woman investigates her cousin's claims of supernatural horrors at a remote mansion in 1950s Mexico.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389359-L.jpg",
    "genre": "Horror",
    "rating": 3.92,
    "publicationYear": 2020,
    "publisher": "Del Rey"
  },
  {
    "title": "Tomorrow, and Tomorrow, and Tomorrow",
    "author": "Gabrielle Zevin",
    "description": "A chronicle of the friendship between two game developers spanning thirty years.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389360-L.jpg",
    "genre": "Literary Fiction",
    "rating": 4.32,
    "publicationYear": 2022,
    "publisher": "Knopf"
  },
  {
    "title": "The Midnight Library",
    "author": "Matt Haig",
    "description": "A library between life and death offers a chance to try out different versions of life.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389361-L.jpg",
    "genre": "Fantasy",
    "rating": 4.02,
    "publicationYear": 2020,
    "publisher": "Viking"
  },
  {
    "title": "Lessons in Chemistry",
    "author": "Bonnie Garmus",
    "description": "A female chemist becomes a cooking show host in the 1960s, teaching science to housewives.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389362-L.jpg",
    "genre": "Historical Fiction",
    "rating": 4.41,
    "publicationYear": 2022,
    "publisher": "Doubleday"
  },
  {
    "title": "Cloud Cuckoo Land",
    "author": "Anthony Doerr",
    "description": "Multiple storylines across centuries connected by an ancient Greek manuscript.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389363-L.jpg",
    "genre": "Literary Fiction",
    "rating": 4.32,
    "publicationYear": 2021,
    "publisher": "Scribner"
  },
  {
    "title": "The Paper Palace",
    "author": "Miranda Cowley Heller",
    "description": "A woman must choose between her husband and her first love over 24 hours.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389364-L.jpg",
    "genre": "Literary Fiction",
    "rating": 4.12,
    "publicationYear": 2021,
    "publisher": "Riverhead Books"
  },
  {
    "title": "Piranesi",
    "author": "Susanna Clarke",
    "description": "A man lives in a mysterious house with endless rooms and statues.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389365-L.jpg",
    "genre": "Fantasy",
    "rating": 4.28,
    "publicationYear": 2020,
    "publisher": "Bloomsbury Publishing"
  },
  {
    "title": "The Lincoln Highway",
    "author": "Amor Towles",
    "description": "A cross-country journey in 1950s America with unexpected detours.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389366-L.jpg",
    "genre": "Historical Fiction",
    "rating": 4.27,
    "publicationYear": 2021,
    "publisher": "Viking"
  },
  {
    "title": "Matrix",
    "author": "Lauren Groff",
    "description": "A tale of spiritual and political power in a medieval abbey.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389367-L.jpg",
    "genre": "Historical Fiction",
    "rating": 3.89,
    "publicationYear": 2021,
    "publisher": "Riverhead Books"
  },
  {
    "title": "Hell Bent",
    "author": "Leigh Bardugo",
    "description": "The sequel to Ninth House follows Alex Stern in her quest to bring someone back from the dead.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389368-L.jpg",
    "genre": "Fantasy",
    "rating": 4.37,
    "publicationYear": 2023,
    "publisher": "Flatiron Books"
  },
  {
    "title": "Horse",
    "author": "Geraldine Brooks",
    "description": "A novel connecting the history of a famous racing horse to contemporary art and science.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389369-L.jpg",
    "genre": "Historical Fiction",
    "rating": 4.35,
    "publicationYear": 2022,
    "publisher": "Viking"
  },
  {
    "title": "Sea of Tranquility",
    "author": "Emily St. John Mandel",
    "description": "A time travel narrative connecting multiple centuries and parallel worlds.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389370-L.jpg",
    "genre": "Science Fiction",
    "rating": 4.21,
    "publicationYear": 2022,
    "publisher": "Knopf"
  },
  {
    "title": "The Diamond Eye",
    "author": "Kate Quinn",
    "description": "Based on the true story of a Russian female sniper during World War II.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389371-L.jpg",
    "genre": "Historical Fiction",
    "rating": 4.41,
    "publicationYear": 2022,
    "publisher": "William Morrow"
  },
  {
    "title": "Atlas: The Story of Pa Salt",
    "author": "Lucinda Riley",
    "description": "The final installment of the Seven Sisters series, revealing the mystery of Pa Salt.",
    "imageUrl": "https://covers.openlibrary.org/b/id/10389372-L.jpg",
    "genre": "Contemporary Fiction",
    "rating": 4.45,
    "publicationYear": 2023,
    "publisher": "Macmillan"
  }
]
''';
}