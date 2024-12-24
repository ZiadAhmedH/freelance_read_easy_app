class AppManger{

  static const String coverBook = "assets/images/Book_Cover.jpg";
  static const String coverBook2 = "assets/images/stage.jpg";

  static const String coverBook3 = "assets/images/ALone.jpg";




 static const String jsonData = '''
[
  {
    "title": "The Great Gatsby",
    "author": "F. Scott Fitzgerald",
    "description": "A novel about the decline of the American Dream in the 1920s.",
    "imageUrl": "https://covers.openlibrary.org/b/id/7222246-L.jpg"
  },
  {
    "title": "1984",
    "author": "George Orwell",
    "description": "A dystopian novel about totalitarianism and surveillance.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8231856-L.jpg"
  },
  {
    "title": "To Kill a Mockingbird",
    "author": "Harper Lee",
    "description": "A story of racial injustice and childhood innocence in the Deep South.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8228691-L.jpg"
  },
  {
    "title": "Pride and Prejudice",
    "author": "Jane Austen",
    "description": "A romantic novel about manners, marriage, and society in 19th century England.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8091016-L.jpg"
  },
  {
    "title": "Moby-Dick",
    "author": "Herman Melville",
    "description": "An epic tale of a sailor’s quest for revenge against a giant white whale.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8100920-L.jpg"
  },
  {
    "title": "The Catcher in the Rye",
    "author": "J.D. Salinger",
    "description": "A young man’s journey through adolescence and his disillusionment with society.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226191-L.jpg"
  },
  {
    "title": "Brave New World",
    "author": "Aldous Huxley",
    "description": "A dystopian novel set in a futuristic society that suppresses individuality.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8775116-L.jpg"
  },
  {
    "title": "Crime and Punishment",
    "author": "Fyodor Dostoevsky",
    "description": "A psychological drama about the moral dilemmas faced by a young man who commits murder.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8225261-L.jpg"
  },
  {
    "title": "The Odyssey",
    "author": "Homer",
    "description": "An ancient Greek epic poem about Odysseus' long journey home after the Trojan War.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8235045-L.jpg"
  },
  {
    "title": "The Picture of Dorian Gray",
    "author": "Oscar Wilde",
    "description": "A philosophical novel about vanity, corruption, and the consequences of living a hedonistic life.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8231857-L.jpg"
  },
  {
    "title": "Jane Eyre",
    "author": "Charlotte Brontë",
    "description": "A novel about the experiences of the eponymous heroine, including her growth to adulthood and her love for Mr. Rochester.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226192-L.jpg"
  },
  {
    "title": "Wuthering Heights",
    "author": "Emily Brontë",
    "description": "A tale of passion and revenge set on the Yorkshire moors.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226193-L.jpg"
  },
  {
    "title": "Great Expectations",
    "author": "Charles Dickens",
    "description": "The story of the orphan Pip and his growth and personal development.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226194-L.jpg"
  },
  {
    "title": "War and Peace",
    "author": "Leo Tolstoy",
    "description": "A historical novel that chronicles the French invasion of Russia and its impact on Tsarist society.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226195-L.jpg"
  },
  {
    "title": "The Adventures of Huckleberry Finn",
    "author": "Mark Twain",
    "description": "A young boy and a runaway slave travel down the Mississippi River.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226196-L.jpg"
  },
  {
    "title": "Les Misérables",
    "author": "Victor Hugo",
    "description": "An epic tale of love, justice, and redemption set in post-revolutionary France.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226197-L.jpg"
  },
  {
    "title": "The Brothers Karamazov",
    "author": "Fyodor Dostoevsky",
    "description": "A philosophical novel that delves into ethical debates of God, free will, and morality.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226198-L.jpg"
  },
  {
    "title": "Madame Bovary",
    "author": "Gustave Flaubert",
    "description": "A story about a doctor's wife who seeks escape from her provincial life through love affairs.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226199-L.jpg"
  },
  {
    "title": "The Divine Comedy",
    "author": "Dante Alighieri",
    "description": "An epic poem describing the author's journey through the afterlife.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226200-L.jpg"
  },
  {
    "title": "The Count of Monte Cristo",
    "author": "Alexandre Dumas",
    "description": "A tale of betrayal and revenge set in post-Napoleonic France.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226201-L.jpg"
  },
  {
    "title": "Don Quixote",
    "author": "Miguel de Cervantes",
    "description": "The story of a delusional knight and his loyal squire on a quest for adventure.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226202-L.jpg"
  },
  {
    "title": "The Iliad",
    "author": "Homer",
    "description": "An epic poem about the Trojan War and the hero Achilles.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226203-L.jpg"
  },
  {
    "title": "Frankenstein",
    "author": "Mary Shelley",
    "description": "A Gothic novel about a scientist who creates a living being, only to be horrified by it.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226204-L.jpg"
  },
  {
    "title": "Dracula",
    "author": "Bram Stoker",
    "description": "A Gothic horror novel about Count Dracula's attempt to move from Transylvania to England.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226205-L.jpg"
  },
  {
    "title": "A Tale of Two Cities",
    "author": "Charles Dickens",
    "description": "A novel set during the French Revolution, highlighting themes of redemption and sacrifice.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226206-L.jpg"
  },
  {
    "title": "Anna Karenina",
    "author": "Leo Tolstoy",
    "description": "A tragic story of love, infidelity, and societal expectations in Imperial Russia.",
    "imageUrl": "https://covers.openlibrary.org/b/id/8226207-L.jpg"
  }
]

''';





}