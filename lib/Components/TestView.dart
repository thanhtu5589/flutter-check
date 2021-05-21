import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestViewState();
  }
}

class _TestViewState extends State<TestView> {

  String formatCurrency(int currency) {
    var result = "";
    final stringCurrency = currency.toString();
    final arrayCurrency = stringCurrency.split("").reversed.toList();
    arrayCurrency.asMap().forEach((index, value) {
      result += value;
      var realPosition = index + 1;
      if (realPosition % 3 == 0 && realPosition < arrayCurrency.length) {
        result += ".";
      }
    });

    return result.split("").reversed.join();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant TestView oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
          child: TextButton(
            child: Text("Tap"),
            onPressed: () {

              int input = 1;
              print(formatCurrency(input));
            },
          ),
        ),
      ),
    );
  }
}