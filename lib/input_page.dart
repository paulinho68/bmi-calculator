import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: new ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          colour: selectedGender == Gender.male ? Color(0xFF111328) : Color(0xFF1D1E33),
                          cardChild: new IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                      ),
                  ),
                  Expanded(
                    child: new ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ?  Color(0xFF111328) : Color(0xFF1D1E33),
                      cardChild: new IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: new ReusableCard(
                          colour: Color(0xFF1D1E33),
                          cardChild: new IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                      )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: new ReusableCard(
                        colour: Color(0xFF1D1E33),
                        cardChild: new IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                      )
                  ),
                  Expanded(
                      child: new ReusableCard(
                          colour: Color(0xFF1D1E33),
                          cardChild: new IconContent(icon: FontAwesomeIcons.mars, label: 'MALE')
                      )
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
              child: Text(
                  "Calcular",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0
                  ),
              ),
            ),
          ],
        ));
  }
}




