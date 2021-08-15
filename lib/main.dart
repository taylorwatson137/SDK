import 'package:flutter/material.dart';
import 'package:shecode/health/healthcare.dart';
import 'package:shecode/health/kienthuc.dart';
import 'package:shecode/health/route.dart';
import 'package:shecode/health/thongtin.dart';
import 'package:shecode/health/solution.dart';
import 'package:shecode/profile/mprofile.dart';
import 'package:shecode/shopping/shop.dart';
void main() => runApp(MaterialApp(
  title: "App",
  routes: {
    HealthyAppRoutes.home: (context) => MyApp(),
    HealthyAppRoutes.healthcare: (context) => HealthCare(),
    HealthyAppRoutes.kienthuc: (context) => KienThuc(),
    HealthyAppRoutes.solution: (context) => Solution(),
    HealthyAppRoutes.thongtin: (context) => ThongTin(),
    HealthyAppRoutes.mprofile: (context) => MyProfile2(),
    HealthyAppRoutes.shop: (context) => Shop(),
  },
  initialRoute: '/',
));
class HealthyAppRoutes {
  static const home = "/";
  static const kienthuc = "kienthuc";
  static const healthcare = "healthcare";
  static const solution = "solution";
  static const thongtin = "thongtin";
  static const mprofile = "mprofile";
  static const shop="shop";
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=> _MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(35, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Container(
                  width: 5,
                  height: 5,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  )
                )
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
              child: Image.asset("assets/mlogo.png"),
            ),
              Padding(
                padding:const EdgeInsets.fromLTRB(125, 0, 0, 40),
                child: Text("SFC", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:30,
                  color: Colors.deepOrange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,40),
                child: TextField(
                      style: TextStyle(fontSize:25),
                      decoration: InputDecoration(
                          labelText: "Tên đăng nhập",
                          labelStyle: TextStyle(
                            color: Colors.blueAccent,
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,40),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize:25),
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                  Text(
                        "Hiển thị",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize:15,
                        )
                      ),
                  ]
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: SizedBox(
                  width: double.infinity,
                  height:56,
                  child: RaisedButton(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    color: Colors.blueAccent,
                    child:Text(
                      "Đăng nhập",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(
                        context,HealthyAppRoutes.healthcare,
                      );
                    },
                  )
                ),
              ),
              Container(
                height:150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                    "Bạn chưa có tài khoản?",
                    style: TextStyle(fontSize:14, color: Color(0xff888888)),
                    ),
                    Text(
                    "Quên mật khẩu?",
                    style: TextStyle(fontSize:14, color: Colors.blue),
                    ),
                ]
                )
            )
          ]
        )
      )
    );
  }
}