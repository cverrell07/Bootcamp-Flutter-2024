// ignore_for_file: public_member_api_docs, sort_constructors_first
class MenuItem {
  String _name;
  int _price;

  // Constructor Manual
  // MenuItem(this._name, this._price);

  MenuItem(
    this._name,
    this._price,
  );

  // Method getter without arrow function
  // String? getName(){
  //   return this._name;
  // }

  // Getter
  String get name => _name;
  int get price => _price;

  // Setter
  void setName(String name){
    this._name = name;
  }
  void setPrice(int price){
    if(price > 0){
      this._price = price;
    }else{
      print("Price cannot be less than 0");
    }
  }
}

class Food extends MenuItem {
  bool _isVegetarian;

  Food(
    super._name,
    super._price,
    this._isVegetarian
  );
  // Food(String name, int price, this._isVegetarian) : super(name, price);
  
  bool get isVegetarian => _isVegetarian;
  void setVegetarian(bool isVegetarian){
    this._isVegetarian = isVegetarian;
  }
}

class Drink extends MenuItem{
  bool _isAlcoholic;

  Drink(
    super._name,
    super._price,
    this._isAlcoholic
  );

  bool get isAlcoholic => _isAlcoholic;
  void setAlcoholic(bool isAlcoholic){
    this._isAlcoholic = isAlcoholic;
  }
}

class Order{
  List<MenuItem> _items = [];

  void addItem(MenuItem item){
    this._items.add(item);
  }

  int getTotal(){
    int total = 0;
    for(var item in _items){
      total += item._price;
    }
    return total;
  }

  void displayOrder(){
    for(var item in _items){
      print("Item: ${item._name} | Price: ${item._price}");
    }
  }
}

abstract class Payment{
  void pay(int amount);
}

class CashPayment extends Payment{
  @override
  void pay(int amount){
    print("Paid: ${amount} with cash");
  }
}

class CardPayment extends Payment {
  String _cardNumber;

  CardPayment(
    this._cardNumber,
  );

  String get cardNumber => _cardNumber;
  void setCardNumber(String cardNumber){
    this._cardNumber = cardNumber;
  }

  @override
  void pay(int amount) {
    print("Paid: ${amount} with card");
  }
}

void main(){
  // Declare Object / Make Object
  // var [namaObject] = Constructor();
  var burger = Food("Burger", 20000, false);
  var friedChicken = Food("Fried Chicken", 13000, false);
  var gadoGado = Food("Gado-Gado", 15000, true);
  var soda = Drink("Soda", 5000, false);
  var wine = Drink("Wine", 150000, true);

  // Make object from Order
  var order = Order();
  order.addItem(burger);
  order.addItem(friedChicken);
  order.addItem(soda);

  order.displayOrder();
  print("Total: ${order.getTotal()}");

  // Make object from Payment
  Payment payment = CardPayment("2345-8920-781");
  payment.pay(order.getTotal());
}
