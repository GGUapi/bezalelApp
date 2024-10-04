import 'package:bezalel_app/sync.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'register.dart';
import 'sync.dart';
//import 'category.dart';
import 'newpassword.dart';

class InfoScreen extends StatefulWidget{
  const InfoScreen({Key? key}) : super(key: key);

  @override
  InfoScreenState createState() => InfoScreenState();
}

class InfoScreenState extends State<InfoScreen> {
  bool ischecked = false;
  bool isobscure = true;
  @override
  Widget build(BuildContext context) {
    final nameController1 = TextEditingController( text: 'a123456789' );
    final nameController2 = TextEditingController( text: 'a123456789' );

    final nameField1 = TextField(
      controller: nameController1,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        label: Align(alignment: Alignment.bottomLeft,child: Text('密碼(可點擊修改)'),),
        filled: true,  // 设置为true，使背景为填充色
        fillColor: Color(0xFFCFD1D6),  // 设置背景颜色
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // 设置内边距
        border: OutlineInputBorder(
          borderSide: BorderSide.none,  // 移除边框线
          borderRadius: BorderRadius.circular(0.0),  // 设置圆角
        ),

        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              isobscure = !isobscure;
            });
          },
          icon: Image.asset('assets/Eye.png'),),
      ),
      obscureText: isobscure,
    );

    final nameField2 = TextField(
      controller: nameController2,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        label: Align(alignment: Alignment.bottomLeft,child: Text('密碼再次確認'),),
        filled: true,  // 设置为true，使背景为填充色
        fillColor: Color(0xFFCFD1D6),  // 设置背景颜色
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0), // 设置内边距
        border: OutlineInputBorder(
          borderSide: BorderSide.none,  // 移除边框线
          borderRadius: BorderRadius.circular(0.0),  // 设置圆角
        ),

        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              isobscure = !isobscure;
            });
          },
          icon: Image.asset('assets/Eye.png'),),
      ),
      obscureText: isobscure,
    );

    final btn = ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPasswordScreen())),
      child: const Text('儲存'),
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0.0),
        foregroundColor: (Color(0xFFFFFFFF)),
        backgroundColor: (Color(0xFFC4C4C5)),
      ),
    );

    final topic = const Text(
      'Superstar123',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final hint1 = const Text(
      '姓名',
      style: TextStyle(
        fontSize: 14,
        backgroundColor: const Color(0xFFCFD1D6),
      ),
    );

    final info1 = const Text(
      '三重劉德華',
      style: TextStyle(
        fontSize: 20,
        backgroundColor: const Color(0xFFCFD1D6),
      ),
    );

    final hint2 = const Text(
      '手機號碼',
      style: TextStyle(
        fontSize: 14,
        backgroundColor: const Color(0xFFCFD1D6),
      ),
    );

    final info2 = const Text(
      '0912345678',
      style: TextStyle(
        fontSize: 20,
        backgroundColor: const Color(0xFFCFD1D6),
      ),
    );

    final hint3 = const Text(
      '電子郵件',
      style: TextStyle(
        fontSize: 14,
        backgroundColor: const Color(0xFFCFD1D6),
      ),
    );

    final info3 = const Text(
      'superstar123@gmail.com',
      style: TextStyle(
        fontSize: 20,
        backgroundColor: const Color(0xFFCFD1D6),
      ),
    );

    final icon = Image.asset('assets/blueuser.png');

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
                Container(
                  child: Row(children: [
                    Container(child: icon,alignment: Alignment.center,),
                    Container(child: topic,alignment: Alignment.center,),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  margin: EdgeInsets.only(bottom: 30.0,top: 30.0),
                ),

                Container(
                  decoration: BoxDecoration(color:const Color(0xFFCFD1D6),),
                  padding: const EdgeInsets.all(16.0),
                  margin: EdgeInsets.only(bottom: 20.0,),
                  child: Column(
                    children: [
                      Container(child: hint1,alignment: Alignment.topLeft,),
                      Container(child: info1,alignment: Alignment.center,),
                      Container(child: hint2,alignment: Alignment.topLeft,),
                      Container(child: info2,alignment: Alignment.center,),
                      Container(child: hint3,alignment: Alignment.topLeft,),
                      Container(child: info3,alignment: Alignment.center,),
                    ],
                  ),
                ),

                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 300,  // 最小宽度
                    maxWidth: 380,  // 最大宽度
                    minHeight: 60,  // 最小高度
                    maxHeight: 60,  // 最大高度
                  ),
                  child: nameField1,
                ),

                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 300,  // 最小宽度
                    maxWidth: 380,  // 最大宽度
                    minHeight: 60,  // 最小高度
                    maxHeight: 60,  // 最大高度
                  ),
                  child: nameField2,
                ),

                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  child:ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 300,  // 最小宽度
                      maxWidth: 380,  // 最大宽度
                      minHeight: 50,  // 最小高度
                      maxHeight: 50,  // 最大高度
                    ),
                    child: btn,
                  ),
                ),

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
