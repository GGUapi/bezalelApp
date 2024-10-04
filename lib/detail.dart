import 'package:bezalel_app/sync.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'register.dart';
import 'sync.dart';
//import 'category.dart';
import 'newpassword.dart';

class DetailScreen extends StatefulWidget{
  const DetailScreen({Key? key}) : super(key: key);

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    int powerrate = 100;
    int minute = 40;
    int powerin = 5;
    int wirelessin = 5;
    int wirein = 0;
    int powerout = 10;
    int wirelessout1 = 5;
    int wirelessout2 = 0;
    int wireout = 5;
    int health = 1;
    int temp = 25;
    final topic = const Text(
      'Prelude X 無線充電器',
      style: TextStyle(
        fontSize: 18,
        fontWeight:FontWeight.bold,
      ),
    );

    final hint1 = const Text(
      '無線充電器狀況良好!',
      style: TextStyle(
        fontSize: 14,
      ),
    );

    final hint2 = const Text(
      '剩餘',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFF7F7F7F),
      ),
    );

    final hint3 = const Text(
      '充電速度',
      style: TextStyle(
        fontSize: 14,
      ),
    );

    final hint4 = const Text(
      '輸入',
      style: TextStyle(
        fontSize: 12,
      ),
    );

    final hint5 = const Text(
      '無線',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFF7F7F7F),
      ),
    );

    final hint6 = const Text(
      'USB-C',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFF7F7F7F),
      ),
    );

    final hint7 = const Text(
      '輸入',
      style: TextStyle(
        fontSize: 12,
      ),
    );

    final hint8 = const Text(
      '無線1',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFF7F7F7F),
      ),
    );

    final hint9 = const Text(
      '無線2',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFF7F7F7F),
      ),
    );

    final hint10 = const Text(
      '健康狀況',
      style: TextStyle(
        fontSize: 12,
      ),
    );

    final hint11 = const Text(
      '溫度',
      style: TextStyle(
        fontSize: 12,
      ),
    );

    final info1 = Text(
      '$powerrate',
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFFFFFFFF),
      ),
    );

    final info2 = const Text(
      '%',
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFFFFFFFF),
      ),
    );

    final info3 = Text(
      '$minute 分鐘',
      style: TextStyle(
        fontSize: 12,
      ),
    );

    final info4 = Text(
      '$powerin W',
      style: TextStyle(
        fontSize: 32,
      ),
    );

    final info5 = Text(
      '$wirelessin W',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final info6 = Text(
      '$wirein W',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final info7 = Text(
      '$powerout W',
      style: TextStyle(
        fontSize: 32,
      ),
    );

    final info8 = Text(
      '$wirelessout1 W',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final info9 = Text(
      '$wirelessout2 W',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final info10 = Text(
      '$wireout W',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final info11 = Text(
      '$temp',
      style: TextStyle(
        fontSize: 32,
      ),
    );

    final info12 = const Text(
      '℃',
      style: TextStyle(
        fontSize: 16,
      ),
    );


    final icon = Image.asset('assets/flash.png');
    final state = Image.asset('assets/check.png');
    final product = Image.asset('assets/preludeXR_L.png');

    return Scaffold(
      backgroundColor: const Color(0xFFEAEAEA),
      appBar: AppBar(
        title: const Text('帳號資訊'),
        foregroundColor: const Color(0xFFFFFFFF),
        toolbarHeight: 60,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF4B9BE1),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Image.asset('assets/wback.png'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(child: topic,alignment: Alignment.center,margin: EdgeInsets.only(top: 20,),),
                Container(child: product,alignment: Alignment.center,margin: EdgeInsets.only(top: 20,bottom: 20,),),
                Row(
                  children: [state,hint1],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20,),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(children: [icon,info1,info2],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
                        alignment: Alignment.center,
                        color: const Color(0xFF4B9BE1),
                        width: 170,
                        height: 70,
                      ),

                      Container(
                        width: 170,
                        height: 70,
                        color: const Color(0xFFFFFFFF),
                        child: Column(
                          children: [info3,hint2],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ],
                  ),
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: hint3,alignment: Alignment.topLeft,color: const Color(0xFFFFFFFF),width: 340,padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child:
                            Column(
                              children: [
                                Container(child: hint4,alignment: Alignment.topLeft,padding: EdgeInsets.only(top: 24,),),
                                Container(child: info4,alignment: Alignment.center,),
                                Container(child: hint5,alignment: Alignment.topLeft,),
                                Container(child: info5,alignment: Alignment.center,),
                                Container(child: hint6,alignment: Alignment.topLeft,),
                                Container(child: info6,alignment: Alignment.center,padding: EdgeInsets.only(bottom: 24,),),
                              ],
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                              border: Border(
                                  right: BorderSide(color:const Color(0xFFD9D9D9),width: 1.0),
                              ),
                          ),

                          width: 170,
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child:
                          Column(
                            children: [
                              Container(child: hint7,alignment: Alignment.topLeft,),
                              Container(child: info7,alignment: Alignment.center,),
                              Container(child: hint8,alignment: Alignment.topLeft,),
                              Container(child: info8,alignment: Alignment.center,),
                              Container(child: hint9,alignment: Alignment.topLeft,),
                              Container(child: info9,alignment: Alignment.center,),
                              Container(child: hint6,alignment: Alignment.topLeft,),
                              Container(child: info10,alignment: Alignment.center,),
                            ],
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                          ),
                          width: 170,
                        ),

                      ],
                    ),
                    Container(child: Text('  '),alignment: Alignment.topLeft,color: const Color(0xFFFFFFFF),width: 340,height: 20,),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 10,),
                      width: 150,
                      height: 85,
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20,),
                      color: const Color(0xFFFFFFFF),
                      alignment: Alignment.center,
                      child:Column(children: [
                        Container(child: hint10,alignment: Alignment.topLeft,),
                        Container(child: Text('正常',style: TextStyle(fontSize: 20.0)),alignment: Alignment.bottomCenter,),
                      ],),
                    ),

                    Container(
                      color: const Color(0xFFFFFFFF),
                      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 10,),
                      width: 150,
                      height: 85,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20,),
                      alignment: Alignment.center,
                      child: Column(children: [
                        Container(child: hint11,alignment: Alignment.topLeft,),
                        Container(
                          child:Row(children: [info11,info12],mainAxisAlignment: MainAxisAlignment.center,),
                          alignment: Alignment.center,),
                      ],),
                    ),


                  ],
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blue,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showForgotPasswordDialog(BuildContext context) {
    final emailController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('重設密碼'),
        content: TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: '輸入註冊的帳號',
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () async {
              String email = emailController.text.trim();
              if (email.isEmpty) {
                //Fluttertoast.showToast(msg: "請輸入帳號");
                return;
              }

              /*try {
                await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
                Fluttertoast.showToast(msg: "重設密碼郵件已發送");
                Navigator.of(context).pop();
              } on FirebaseAuthException catch (e) {
                Fluttertoast.showToast(msg: "重設密碼失敗: ${e.message}");
              }*/
            },
            child: const Text('確認'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
        ],
      ),
    );
  }
}
