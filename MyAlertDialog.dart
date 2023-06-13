import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.greenAccent,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))

  );
}
MyAlertDialog(){
  return showDialog(
    context: context, 
    builder: (BuildContext context) {
      return Expanded(
        child: AlertDialog(
          title: Text("Alert Dialog!"),
          content: Text("Do you want to delete"),
          actions: [
            TextButton(onPressed: (){}, child: Text("Yes")),
                    TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
          ],
        ),
      
      
      );
    }
    );
    
}
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Bap Ka Beta'),
      ),
      body:Center(
        child:ElevatedButton(onPressed: (){MyAlertDialog();}, child:Text("Click Me")),
      ),
    );
  }
}

