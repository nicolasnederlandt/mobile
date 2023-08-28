import 'dart:math';

    class Property {
      final String state;
      final String type;
      final int superficy;
      final int roomNumber;
      final int price;

      Property({required this.state,
        required this.type,
        required this.superficy,
        required this.roomNumber,
        required this.price});
    }

  List<Property> _createProperty() {


    final propertiesToSell = List.generate(
        25, (i) => Property(
        state: (Random().nextInt(10).round())>=5 ? "Sell" : "Loan",
        type : (Random().nextInt(10).round())>=5 ? "Appartement" : "House",
        superficy: (i*250/(Random().nextInt(10)+1).round()).round(),
        roomNumber: (i*10/(Random().nextInt(10)+1).round()).round(),
        price: (i*25000/(Random().nextInt(10)+1).round()).round()

    ));

    final propertiesToLoan = List.generate(
        25, (i) => Property(
        state: "Loan",
        type : (Random().nextInt(10).round())>=5 ?  "Appartement" : "House",
        superficy: (i*250/(Random().nextInt(10)+1).round()).round(),
        roomNumber: (i*10/(Random().nextInt(10)+1).round()).round(),
        price: (i*25000/(Random().nextInt(10)+1).round()).round()

    ));


    return [...propertiesToSell];
  }

  final defaultProperties = _createProperty();