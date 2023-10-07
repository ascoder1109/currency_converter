import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            width: 2,
            style: BorderStyle.solid,
            color: Color.fromRGBO(83, 83, 83, 1)),
        borderRadius: BorderRadius.circular(40));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text("Currency Converter"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              // " ${result.toStringAsFixed(2)}",
              "₹ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color(0xFFFFFFFF)),
                decoration: InputDecoration(
                  hintText: "Please enter amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  // prefixText: "Hello",
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: const Color.fromRGBO(58, 58, 58, 1),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextButton(
                onPressed: () {
                  // print(textEditingController.text);
                  // build(context);
                  setState(() {
                    result = double.parse(textEditingController.text) * 83.12;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xF64B4B4B),
                  foregroundColor: const Color(0xFFFFFFFF),
                  fixedSize: const Size(100, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        )));
  }
}
