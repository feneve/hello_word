import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() {
    return HomepageState();
  }
}

class HomepageState extends State<Homepage> {
  int counter = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duvido vc apertar"),
        backgroundColor: Colors.blue,
        actions: [CustomSwitch()],
      ),
      body: Center(
        child: Text("Contador $counter",style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
class CustomSwitch extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return  Switch(
          value: AppController.instance.isDartTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          },
        );
  }
}
