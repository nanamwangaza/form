import 'package:default_app_counter/home.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey =
      GlobalKey(); //created formKey variable, type is GlobalKey<FormState>, (used in key: in Form)

  final nameTextEditControler =
      TextEditingController(); //Used in controller:, in TextFormField
  final emailTextEditControler = TextEditingController();
  final phoneTextEditControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('My Form')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ignore: prefer_const_constructors
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/Qlicue.JPG'),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Divider(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: nameTextEditControler,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name is required';
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ('Enter your name:'),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailTextEditControler,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        }

                        if (!RegExp(
                                r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                            .hasMatch(value.trim())) {
                          return "Invalid email";
                        } //if(RegExp().hasMatch()){return ....} 
                        //.trim does not leave space after entering email 
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ('Enter your email:'),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: phoneTextEditControler,
                      validator: (value) {
                        if (value!.isEmpty) return 'Phone number is required';
                      }, //U can create a function outside
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ('Enter your phone number:'),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30)),
                      width: 200,
                      height: 50,
                      child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              authProvider.login(
                                  myName: nameTextEditControler.text,
                                  myEmail: emailTextEditControler.text,
                                  myPhone: phoneTextEditControler.text);
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }
                          },
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
