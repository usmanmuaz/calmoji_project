import 'package:calmoji/Components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import '../Components/colors.dart';

class CalMojiHome extends StatefulWidget {
  const CalMojiHome({Key? key}) : super(key: key);

  @override
  State<CalMojiHome> createState() => _CalMojiHomeState();
}

class _CalMojiHomeState extends State<CalMojiHome> {

  var userInput='';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: Column(
          children: [

            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput.toString(), style:  GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 25, color: grey)),)),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(answer.toString(), style:  GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 35, color: grey)),)),


                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyTextButton(title: 'AC', onPress: (){
                            userInput = '';
                            answer= '';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '/', onPress: (){
                            userInput += '/';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: 'x', onPress: (){
                            userInput += 'x';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: 'DEL', onPress: (){
                            userInput = userInput.substring(0, userInput.length-1);
                            answer = '';
                            setState(() {

                            });
                          },),




                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyTextButton(title: '7', onPress: (){
                            userInput += '7';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '8', onPress: (){
                            userInput += '8';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '9', onPress: (){
                            userInput += '9';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '%', onPress: (){
                            userInput += '%';
                            setState(() {

                            });
                          },),




                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyTextButton(title: '4', onPress: (){
                            userInput += '4';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '5', onPress: (){
                            userInput += '5';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '6', onPress: (){
                            userInput += '6';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '+', onPress: (){
                            userInput += '+';
                            setState(() {

                            });
                          },),




                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyTextButton(title: '1', onPress: (){
                            userInput += '1';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '2', onPress: (){
                            userInput += '2';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '3', onPress: (){
                            userInput += '3';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '-', onPress: (){
                            userInput += '-';
                            setState(() {

                            });
                          },),




                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyTextButton(title: '+/-', onPress: (){
                            userInput += '';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '0', onPress: (){
                            userInput += '0';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '.', onPress: (){
                            userInput += '.';
                            setState(() {

                            });
                          },),
                          MyTextButton(title: '=',color: orange, onPress: (){
                            equalPress();
                            setState(() {

                            });
                          },),




                        ],
                      ),






                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void equalPress(){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel cm = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();

  }
}

