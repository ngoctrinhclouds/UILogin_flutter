import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Text('Email',
      // style: TextStyle(
      //   color: Colors.white,
      //   fontSize: 16,
      //   fontWeight: FontWeight.bold
      // ),
      // ),
      // SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
            ]),
        height: 40,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 8),
              prefixIcon: Icon(Icons.person),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black26)),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Text('Email',
      // style: TextStyle(
      //   color: Colors.white,
      //   fontSize: 16,
      //   fontWeight: FontWeight.bold
      // ),
      // ),
      // SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
            ]),
        height: 40,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 8),
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black26)),
        ),
      )
    ],
  );
}

Widget buildLogin() {
  return SizedBox(
    // padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Login Pressed'),
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      color: Colors.deepPurple,
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildForgotPass() {
  return Container(
    alignment: Alignment.center,
    child: FlatButton(
      onPressed: () => print("Forgot Your Password"),
      padding: const EdgeInsets.only(right: 0),
      child: const Text(
        'Forgot your password?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w100,
        ),
      ),
    ),
  );
}

Widget buildOrConnect() {
  return Container(
    alignment: Alignment.center,
    child: FlatButton(
      onPressed: () => print("Or Connect With"),
      padding: const EdgeInsets.only(right: 0),
      child: const Text(
        'or connect with',
        style: TextStyle(
          color: Colors.black26,
          fontSize: 12,
          fontWeight: FontWeight.w200,
        ),
      ),
    ),
  );
}

Widget buildSignup() {
  return GestureDetector(
    onTap: () => print("Sign Up Pressed"),
    child: RichText(
      text: const TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an Account? ',
          style: TextStyle(
            color: Colors.black26,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: Colors.indigo,
              // fontSize: 18,
              fontWeight: FontWeight.w200,
            ))
      ]),
    ),
  );
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF1E6FF),
                      // Color(0xFFF1E6FF),
                      // Color(0xFFF1E6FF),
                      // Color(0xFFF1E6FF)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      height: size.height * 0.75,
                      width: size.width * 1,
                      child: Image.asset("assets/images/img_5.png"),
                    ),
                    Positioned(
                      top: 0,
                      height: size.height * 0.70,
                      child: Image.asset("assets/images/img_4.png"),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 65, vertical: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 30),
                          buildEmail(),
                          const SizedBox(height: 20),
                          buildPassword(),
                          const SizedBox(height: 30),
                          buildLogin(),
                          // SizedBox(height: 1),
                          buildForgotPass(),
                          const SizedBox(height: 140),
                          buildOrConnect(),
                          // buildFb(),
                          // buildTw(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  elevation: 5,
                                  onPressed: () => print('facebook'),
                                  padding: const EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  color: Colors.blue,
                                  child: const Text(
                                    'Facebook',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                RaisedButton(
                                  elevation: 5,
                                  onPressed: () => print('twitter'),
                                  padding: const EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  color: Colors.deepPurple,
                                  child: const Text(
                                    'Twitter',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          buildSignup(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
