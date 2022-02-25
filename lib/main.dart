import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          drawer: Drawer(),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            //backgroundColor: Colors.black.withOpacity(0.5),
              items:  <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    icon: SvgPicture.asset("assets\images\icon-1.svg"),
                  label: 'Network'
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  icon: SvgPicture.asset("assets\images\icon-1.svg"),
                  label: 'Message'
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  icon: SvgPicture.asset("assets\images\icon-1.svg"),
                  label: 'Contact'
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  icon: SvgPicture.asset("assets\images\icon-1.svg"),
                  label: 'Library'
                )
              ]
          ),
          appBar: AppBar(
            title: Text("CONTACT",style: TextStyle(fontSize: 16.0,color: Colors.white),),
            centerTitle: true,
          ),
          body: _getBody(),
        )
    );

  }

 Widget _getBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            // _getImage(),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            _getTextFirst(text: "If this is your first time using the OT1 protocols for making contact or if you’d like torefresh your memory on the process, it is highly recommended that you readthrough the OT1 Guide"),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            _getCommonBuutton(button_name: "OT1 GUIDE",color: Color(0xff00aeef)),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            _getTextFirst(text: "To begin the OT1 process, continue below. Per default settings of this app, you willautomatically enter “Field Mode,” where notifications will be muted and screenbrightness will lower to 25%. This will avoid any disturbances during OT1. You mayadjust any of these defaults from within the app settings."),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            _getCommonBuutton(button_name: "BEGIN OT1 ACCESS",color: Color(0xff00aeef)),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            _getCommonBuutton(button_name: "ADJUST FIELD MODE SETTING",color: Colors.transparent),
          ],
        ),
      ),
    );
  }

  _getImage() {
    return Container(
      child: Image.asset("assets/images/ot1_contact_main.png"),
    );
  }

  _getTextFirst({required String text}) {
    return Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Text('$text',
      style: TextStyle(fontSize: 16.0,color: Colors.white),),
    );
  }

 Widget _getCommonBuutton({required String button_name,required Color color}) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20.0,right: 20.0),
        height: 46.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
          border: Border.all(width: 1.0,color: Colors.white)
        ),
        child: Text('$button_name',style: TextStyle(fontSize: 14.0,color: Colors.white),),
      ),
    );
 }
}
