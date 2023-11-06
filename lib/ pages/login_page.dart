
import 'package:flutter/material.dart';
import 'package:flutter_class/utils/routes.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 String name = "User";
 bool changebtn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/img.png'),
            const Text("Welcome ",style:TextStyle(fontSize: 24,fontWeight: FontWeight.w600)),
            const SizedBox(height: 20.0,),
            Padding(
                padding: const EdgeInsets.only(left:20,right:20),
              child: Column(
                children: [
                  TextFormField(decoration: const InputDecoration(border:OutlineInputBorder( borderSide: BorderSide(width: 1)) ,hintText: "UserName",labelText: "Username"
                  ),onChanged: (value) { name=value;
                    setState(() {

                    });

                  },
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(border:OutlineInputBorder( borderSide: BorderSide(width: 1)) ,hintText: "Enter Password",labelText: "Password")
                    ,),


                  const SizedBox(height: 20,),

                  Material(
                    color: Colors.indigo,
    borderRadius:changebtn?BorderRadius.circular(50) :BorderRadius.circular(8),
                    child: InkWell(
                      onTap:() async {
                        setState(() {
                          changebtn=true;
                        });
                        await Future.delayed(const Duration(milliseconds: 600));
                         await Navigator.pushNamed(context,MyRoutes.homeRoutes );
                        setState(() {
                          changebtn=false;
                        });
                      },
                      child: AnimatedContainer(
                        width: changebtn?40:150,
                        height:40,
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 600),

                      child: changebtn?const Icon(Icons.check,color: Colors.white,): const Text('Login',style:TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:18,)),),
                    ),
                  )
                    

                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
