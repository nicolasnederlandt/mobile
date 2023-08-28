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
        state: "Sell",
        type : Random().nextInt(2)>1 ?  "Appartement" : "House",
        superficy: (i*250/Random().nextInt(10)+1).round(),
        roomNumber: (i*10/Random().nextInt(10)+1).round(),
        price: (i*25000/Random().nextInt(10)+1).round()

    ));

    final propertiesToLoan = List.generate(
        25, (i) => Property(
        state: "Loan",
        type : "House",
        superficy: (i*250/(Random().nextInt(10)+1)).round(),
        roomNumber: (i*10/(Random().nextInt(10)+1)).round(),
        price: (i*25000/(Random().nextInt(10)+1)).round()

    ));


    return [...propertiesToSell, ...propertiesToLoan];
  }

  final defaultProperties = _createProperty();