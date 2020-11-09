import 'package:flutter/material.dart';
import '../models/customListTile.dart';
import '../utils/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: Theme.of(context),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange[700],
                        Colors.orange[100],
                      ],
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Image.asset(
                              "assets/images/splash_screen.png",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'Flutter',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: CustomListTile(Icons.person, "Profile", () => {})),
              Expanded(
                flex: 1,
                child: CustomListTile(
                    Icons.notifications, "Notification", () => {}),
              ),
              Expanded(
                flex: 1,
                child: CustomListTile(Icons.settings, "Settings", () => {}),
              ),
              Expanded(
                flex: 1,
                child: CustomListTile(Icons.lock, "Log out", () => {}),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          Constants.VERSION,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Home screen'),
        ),
      ),
    );
  }
}
