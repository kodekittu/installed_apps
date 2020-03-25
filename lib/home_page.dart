import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paynav2/router.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    // Fixing Screen in Portrait Mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  final _formkey = GlobalKey<FormState>();
  final amountController =TextEditingController();
  String receiver = "Naveen Patnaik";
  String company = "PAYNAV";

  Future <void> _shoeAlert (BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please Enter the Amount!', style: TextStyle(fontWeight: FontWeight.w800, color: Colors.redAccent),),
              ],
            )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MY APP', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),textAlign: TextAlign.center,)
        ,elevation: 6,
      ),
      body: Center(
        child: Container(
         // color: Colors.white10,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/robot.png"),
              fit: BoxFit.fitWidth
            ),
          ),
          padding: EdgeInsets.all(18),
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
              //  crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: data.size.height * 0.095,
                    width: data.size.width * 0.6,
                    child: Center(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('Installed APPS',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,)
                        ),
                        focusColor: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 10,
                        padding: EdgeInsets.all(4),
                        onPressed: () async {
                              Navigator.pushNamed(context, payRoute);

                        },
                      ),
                    ),
                  ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}


/*

class _HomePageState extends State<HomePage> {

  final _formkey = GlobalKey<FormState>();
  final amountController =TextEditingController();
  String receiver = "Naveen Patnaik";
  String company = "PAYNAV";

  Future <void> _shoeAlert (BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please Enter the Amount!', style: TextStyle(fontWeight: FontWeight.w800, color: Colors.redAccent),),
              ],
            )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PayNav', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),textAlign: TextAlign.center,)
        ,elevation: 6,
      ),
      body: Form(
          key: _formkey,
          child: Container(
           // color: Colors.white10,
            padding: EdgeInsets.all(6),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /*Center(child: Text('PayNav ASSIGNMENT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 25, bottom: 10),
                    child: Center(
                        child: Text('Select Receiver',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,)
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: data.size.height * 0.07,
                      width: data.size.width * 0.85,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('Naveen Patnaik',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
                        ),
                        focusColor: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 4,
                        padding: EdgeInsets.all(4),
                        onPressed: (){
                          setState(() {
                            receiver = "Naveen Patnaik";
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: data.size.height * 0.07,
                      width: data.size.width * 0.85,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('Rahul Sundar',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
                        ),
                        focusColor: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 4,
                        padding: EdgeInsets.all(4),
                        onPressed: (){
                          setState(() {
                            receiver = "Rahul Sundar";
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: data.size.height * 0.07,
                      width: data.size.width * 0.85,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('Nikhil Arora',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
                        ),
                        focusColor: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 4,
                        padding: EdgeInsets.all(4),
                        onPressed: (){
                          setState(() {
                            receiver = "Nikhil Arora";
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: data.size.height * 0.07,
                      width: data.size.width * 0.85,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('Kurmanadh Valla',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
                        ),
                        focusColor: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 4,
                        padding: EdgeInsets.all(4),
                        onPressed: (){
                          setState(() {
                            receiver = "Kurmanadh Valla";
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 25),
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.topLeft,
                            child: Text('COMPANY :',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
                        ),
                        Container(
                          height: data.size.height * 0.05,
                          width: data.size.width * 0.52,
                          padding: EdgeInsets.only(left: 6, right: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey,)
                          ),
                            child: Center(child: Text(company,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)
                              ,)
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 25),
                    child: Row(
                      children: <Widget>[
                        Container(alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(right: 12),
                            child: Text('RECEIVER :',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
                        ),
                        Container(
                          height: data.size.height * 0.05,
                          width: data.size.width * 0.52,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey,)
                          ),
                          child: Center(child: Text(receiver,
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)
                            ,)
                          )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 25),
                    child: Row(
                      children: <Widget>[
                        Container(alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(right: 17),
                            child: Text('AMOUNT :',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
                        ),
                        Container(
                          height: data.size.height * 0.05,
                          width: data.size.width * 0.52,
                          padding: EdgeInsets.only(left: 6, right: 6,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey,)
                          ),
                          child: TextFormField(
                            controller: amountController,
                          //  validator: (value) => value.isEmpty ? "Please enter amount" : null,
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                            decoration: InputDecoration(
                              hasFloatingPlaceholder: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 25),
                    child: Row(
                      children: <Widget>[
                        Container(alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(right: 11),
                            child: Text('MESSAGE :',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
                        ),
                        Container(
                          height: data.size.height * 0.05,
                          width: data.size.width * 0.52,
                          padding: EdgeInsets.only(left: 6, right: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey,)
                          ),
                          child: TextFormField(
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                            decoration: InputDecoration(
                              hasFloatingPlaceholder: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: data.size.height * 0.07,
                      width: data.size.width * 0.85,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('PAY NAV',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
                        ),
                        focusColor: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 10,
                        padding: EdgeInsets.all(4),
                        onPressed: () async {
                            if(amountController.text != null){
                              Navigator.pushNamed(context, payRoute);
                            }else{
                              _shoeAlert(context);
                            }
                        },
                      ),
                    ),
                  ),
              ],),
            ),
          ),
      ),
    );
  }
}
 */