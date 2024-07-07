abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  int age;

  User(this.name, this.age);

  String toJson() {
    String str = '{"name": "$name", "age": $age}';
    return str;
  }
}

class Product implements Serializable {
  String productName;
  double price;

  Product(this.productName, this.price);

  String toJson() {
    String str = '{"productName": "$productName", "price": $price}';
    return str;
  }
}

void main() {
  User user = User('Toka', 20);
  Product product = Product('Laptop', 100000);

  print(user.toJson());
  print(product.toJson());
}
