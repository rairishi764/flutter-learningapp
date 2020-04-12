import 'package:flutter/material.dart';//import handled by pubsoec.yml

//main function which is run first to kick of app code
void main(){
  runApp(MyApp()); /*fn defined in flutter package does all heavy lifiting of taking 
                      a widget and put it on screen by calling the build fn of widget*/
  
}

//void main() => runApp(MyApp()); alternative syntax but only used in 1 widget run


class MyApp extends StatelessWidget {
  @override //good practic of specifying that u r overriding 
  Widget build(BuildContext ctx){ //always responsible toreturn widget 
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('My first app',),centerTitle: true,))); //scaffold is widget that gives basic structure for app
  }
}