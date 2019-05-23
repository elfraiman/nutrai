import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'bottom_navigation.dart';
import 'package:flutter/services.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final authStream = FirebaseAuth.instance.onAuthStateChanged;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.deepPurpleAccent[400],
      systemNavigationBarDividerColor: Colors.black,
      statusBarColor: Colors.white
    ));

    return MaterialApp(
        title: 'Be the one',
        theme: ThemeData(
            cardTheme: CardTheme(elevation: 5.0),
            appBarTheme: AppBarTheme(
                brightness: Brightness.light,
                elevation: 0,
                color: Colors.white,
                textTheme: TextTheme(
                    title: TextStyle(
                        color: Colors.black87, fontSize: 18, letterSpacing: 4)),
                actionsIconTheme: IconThemeData(color: Colors.black87),
                iconTheme: IconThemeData(color: Colors.black87)),
            primarySwatch: Colors.deepPurple,
            brightness: Brightness.light,
            primaryColor: Colors.deepPurpleAccent[400],
            accentColor: Colors.tealAccent[400],
            buttonColor: Colors.blue[400]),
        home: _FirebaseAuth(
          BottomNav(),
          LoginPage(),
        ));
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  Future<FirebaseUser> _handleSignIn() async {
    final FirebaseUser user = await _auth.signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);

    print("signed in ${user.email}");
    return user;
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title != null ? widget.title : 'Nutrai Fitness'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/tie-shoe.jpg'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        controller: _emailController,
                        decoration: InputDecoration(
                            hasFloatingPlaceholder: true, labelText: 'Email'),
                        validator: (value) {
                          if (value.isEmpty) {
                            final noValue = 'Please enter your email';

                            print(noValue);

                            return noValue;
                          }
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        autofocus: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            hasFloatingPlaceholder: true,
                            labelText: 'Password'),
                        validator: (value) {
                          if (value.isEmpty) {
                            final noValue = 'Please enter your password';

                            print(noValue);

                            return noValue;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: MaterialButton(
                  child: Text('Submit'),
                  color: Colors.deepPurpleAccent[400],
                  textColor: Colors.white,
                  minWidth: 400,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // showInSnackBar('Signed in succesfully!');
                      _handleSignIn();
                    } else {
                      print('Please enter values');
                      showInSnackBar('Please enter values');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FirebaseAuth extends StatelessWidget {
  Widget homepage;
  Widget loginpage;

  _FirebaseAuth(this.homepage, this.loginpage);

  @override
  Widget build(BuildContext context) {
    final authStream = FirebaseAuth.instance.onAuthStateChanged;

    return StreamBuilder(
      stream: authStream,
      builder: (context, snapshot) {
        debugPrint('build ${snapshot.connectionState}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          if (snapshot.data == null) {
            return loginpage;
          } else {
            return homepage;
          }
        }
      },
    );
  }
}
