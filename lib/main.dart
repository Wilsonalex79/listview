// import 'package:flutter/material.dart';
// import 'package:listview/screens/CountryListScreen.dart';
//
// void main(){
//   runApp(Myapp());
// }
//
// class Myapp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/':(context) =>CountryListScreen(),
//       },
//     );
//   }
// }
//
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('ToggleButtons Example'),
        ),
        body:ToggleButtonsExample(),
      ),
    );
  }
}
class ToggleButtonsExample extends StatefulWidget{
  @override
  _ToggleButtonsExampleState createState()=> _ToggleButtonsExampleState();
}
class _ToggleButtonsExampleState extends State<ToggleButtonsExample>{
  List<bool> isSelected = [false,false,false];
  @override
  Widget build(BuildContext context){
    return Center(
      child:ToggleButtons(
        children:[
          Icon(Icons.star),
          Icon(Icons.favorite),
          Icon(Icons.thumb_up),
        ],
        isSelected: isSelected,
        onPressed: (int index){
          setState(() {
            isSelected[index]=!isSelected[index];
          });
        },
      ),
    );
  }
}