import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'drawer.dart';
import 'function/changeNotifier.dart';
import 'package:provider/provider.dart';
import 'valid.dart';
class NewPasswordScreen extends StatefulWidget{
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  NewPasswordScreenState createState() => NewPasswordScreenState();
}

class NewPasswordScreenState extends State<NewPasswordScreen>{
  bool isobscure = true;
  @override
  Widget build(BuildContext context){
    final nameController = TextEditingController();
    final appBar = AppBar(
      title: const Text('設置新密碼'),
      centerTitle: true,
      backgroundColor: Color(0xFF4B9BE1),
      foregroundColor: Color(0xFFFFFFFF),
      leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        icon: Image.asset('assets/wback.png'),
      ),
    );

    final topic = const Text('請輸入您的新密碼',
      style: TextStyle(
        fontSize: 16,
      ),
    );

    final hint = const Text('至少8個字符',
      style: TextStyle(
        fontSize: 14,
        color: const Color(0xFF333C3E),
      ),
    );

    final nameField1 = TextField(
      decoration: InputDecoration(
        filled: true,  // 设置为true，使背景为填充色
        fillColor: Color(0xFFCFD1D6),  // 设置背景颜色
        hintText: '密碼',  // 设置提示文字
        hintStyle: TextStyle(
          color: Colors.white,  // 设置提示文字的颜色
          fontSize: 14.0,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // 设置内边距
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
      decoration: InputDecoration(
        filled: true,  // 设置为true，使背景为填充色
        fillColor: Color(0xFFCFD1D6),  // 设置背景颜色
        hintText: '密碼再次確認',  // 设置提示文字
        hintStyle: TextStyle(
          color: Colors.white,  // 设置提示文字的颜色
          fontSize: 14.0,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // 设置内边距
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
      onPressed: () {
        // 使用 Provider 保存 Email
        Provider.of<EmailProvider>(context, listen: false)
            .setEmail(nameController.text);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ValidMainScreen()),
        );
      },
      child: const Text('繼續'),
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0.0),
        foregroundColor: (Color(0xFFFFFFFF)),
        backgroundColor: (Color(0xFFC4C4C5)),
      ),
    );



    final widget = Container(
      child: Column(
        children: <Widget>[
          Container(
            child: topic,
            margin: const EdgeInsets.only(bottom: 50,left:20,top:130),
            alignment: Alignment.centerLeft,
          ),

          Container(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 300,  // 最小宽度
                maxWidth: 380,  // 最大宽度
                minHeight: 50,  // 最小高度
                maxHeight: 50,  // 最大高度
              ),
              child: nameField1,
            ),
          ),

          Container(
            child: hint,
            margin: const EdgeInsets.only(bottom: 35,left:20),
            alignment: Alignment.centerLeft,
          ),

          Container(
            margin: const EdgeInsets.only(bottom: 175),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 300,  // 最小宽度
                maxWidth: 380,  // 最大宽度
                minHeight: 50,  // 最小高度
                maxHeight: 50,  // 最大高度
              ),
              child: nameField2,
            ),
          ),


          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 300,  // 最小宽度
              maxWidth: 380,  // 最大宽度
              minHeight: 50,  // 最小高度
              maxHeight: 50,  // 最大高度
            ),
            child: btn,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10),
    );

    final appHomePage = Scaffold(
      appBar: appBar,
      backgroundColor: const Color(0xFFEAEAEA),
      body: SingleChildScrollView(
        child: widget,
      ),
    );

    return appHomePage;
  }

}