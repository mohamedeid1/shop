import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/admin/add_product.dart';
import 'package:shop/authentication/authenticatable.dart';
import 'package:shop/authentication/authentication_controller.dart';
import 'package:shop/authentication/firebase_auth.dart';
import 'authentication/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'admin/products.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlutterShop());
}

class FlutterShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthTest(),
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
    );
  }
}

class AuthTest extends StatefulWidget {
  @override
  _AuthTestState createState() => _AuthTestState();
}

class _AuthTestState extends State<AuthTest> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AddProduct();
  }
  /* TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();

  @override
  void initState() {
    super.initState();
    firebaseAuthentication.getCurrentuser();
  }

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AuthTest"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Register"),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "Email"),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                  child: Text("Login"),
                  onPressed: () async {
                    String email = _emailcontroller.text;
                    String password = _passwordcontroller.text;
                    print(email);
                    print(password);
                    User user =
                        await firebaseAuthentication.login(email, password);
                  }),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                  child: Text("SignOut"),
                  onPressed: () async {
                    await firebaseAuthentication.signOut();
                  }),
            ],
          ),
        ),
      ),
    );
  }*/
}
