import 'package:flutter/material.dart';
import 'package:homeserviceprovider/HomePage.dart';
import 'package:homeserviceprovider/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeService(),
    );
  }
}

class HomeService extends StatefulWidget {
  const HomeService({Key? key}) : super(key: key);

  @override
  State<HomeService> createState() => _HomeServiceState();
}

class _HomeServiceState extends State<HomeService> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.blue[200],
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  maxRadius: 50,
                  child: Icon(
                    Icons.home_work_outlined,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "HOME SERVICE PROVIDER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Mobile Number",
                        icon: Icon(Icons.mobile_friendly)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Password", icon: Icon(Icons.lock)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Login")),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text("Register")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Forget Password?"),
                    TextButton(onPressed: (() {}), child: Text("Click here"))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
