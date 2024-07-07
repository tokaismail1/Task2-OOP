class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numberOfPages');
  }
  
}

class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  void displayInfo() {     //override
    super.displayInfo();
    print('Genre: $genre');
  }

}

void main() {
  Novel novel = Novel('Great Expectations', 'Charles Dickens', 544, 'Fiction');

  novel.displayInfo();
}
