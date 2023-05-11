import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                  //color: FlutterFlowTheme.of(context).secondaryBackground,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 450,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(88, 182, 70, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(children: [
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "User name",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(3, 90, 14, 1),
                                    fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                fillColor: Colors.grey,
                              ),
                              onChanged: (String value) {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(3, 90, 14, 1),
                                    fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                fillColor: Colors.grey,
                              ),
                              onChanged: (String value) {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      child: Text(
                                        'Forgot User name / Password',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(88, 182, 70, 1)),
                                      ),
                                      onPressed: () {},
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              onPressed: () {},
                              child: Text(
                                "Sign In".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              color: Color.fromRGBO(88, 182, 70, 1),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              Text(
                                'Dont have account?',
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign up now'.toUpperCase(),
                                    style: TextStyle(
                                        color: Color.fromRGBO(88, 182, 70, 1)),
                                  ))
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
