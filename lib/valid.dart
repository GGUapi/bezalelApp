import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'sync.dart';
import 'function/changeNotifier.dart';
import 'newpassword.dart';

class ValidMainScreen extends StatelessWidget{
  const ValidMainScreen({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context){
    final nameController = TextEditingController();
    final email = Provider.of<EmailProvider>(context).email;
    final appBar = AppBar(
      title: const Text('帳號同步'),
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

    final topic1 = Text('請填寫電子郵件$email\n收到的驗證碼',
      style: TextStyle(
        fontSize: 16,
      ),
    );

    final topic2 = Text('驗證碼',
      style: TextStyle(
        fontSize: 24,
      ),
    );

    final nameField = TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true,  // 设置为true，使背景为填充色
        fillColor: Color(0xFFCFD1D6),  // 设置背景颜色
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0), // 设置内边距
        border: OutlineInputBorder(
          borderSide: BorderSide.none,  // 移除边框线
          borderRadius: BorderRadius.circular(0.0),  // 设置圆角
        ),
        counterText: '',
      ),
      keyboardType: TextInputType.number,
      maxLength: 1,
    );

    final btn1 = TextButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen())),
      child: const Text('再次發送',
        style: TextStyle(fontSize: 18),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0.0),
        foregroundColor: (Color(0xFF000000)),
      ),
    );

    final btn2 = ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPasswordScreen())),
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
            child: topic1,
            margin: const EdgeInsets.only(bottom: 120,top:130),
            alignment: Alignment.center,
          ),

          Container(
            child: topic2,
            margin: const EdgeInsets.only(bottom: 25,left:0),
          ),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 50,left:50,right: 50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index){
                  return SizedBox(
                    width: 40,
                    child: nameField,
                  );
                })
            ),
          ),



          Container(
            child: btn1,
            margin: const EdgeInsets.only(bottom: 70,left:0),
          ),

          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 300,  // 最小宽度
              maxWidth: 380,  // 最大宽度
              minHeight: 50,  // 最小高度
              maxHeight: 50,  // 最大高度
            ),
            child: btn2,
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