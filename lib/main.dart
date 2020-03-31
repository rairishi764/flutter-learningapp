import 'package:flutter/material.dart';//import handled by pubsoec.yml

//main function which is run first to kick of app code
void main(){
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx){
    return MaterialApp(home: Text('Hello'),);
  }
}