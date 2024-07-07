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

void main() {

  Book book = Book('Great Expectations', 'Charles Dickens', 544);
  book.displayInfo();
}
