import 'package:flutter/material.dart';
import 'package:torch_compat/torch_compat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.lightbulb_outline
          ),
          color: isOn?Colors.yellow[200]:Colors.green[700],
          iconSize: 150,
          onPressed: (){
            setState(() {
              isOn = !isOn;
            });
            try {
              if(isOn)
                TorchCompat.turnOn();
              else
                TorchCompat.turnOff();
            } catch (e){

            }
          },
        ),
      )
    );
  }
}