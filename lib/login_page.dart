import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
String password = "";

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      
      appBar:AppBar(
        backgroundColor: Colors.blueAccent,
        title:Text("Vamos Contar") ,
      ) ,
      body:Column(
      children:[ SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                
                child: Image.asset("assents/logo.webp"),
              ),SizedBox(height: 15.0),
              TextField(
                onChanged: (text){
                  email = text;
                },

                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                onChanged: (text){
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 18.0),
             ElevatedButton(onPressed:(){
              if(email.isEmpty || password.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Preencha os campos"),)
                  );
              }else if(email == "123@" && password =="123"){
                  Navigator.of(context).pushNamed('/home');
                  }
                  else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Senha ou Email errado"),)
                  );
                }
              },
             
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent
             ),child: Text("Entrar"
             ),
             )
            ],
          ),
        ),
      ) 
      )]
    ),);
  }
}