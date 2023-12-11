import 'package:doctor/Login.dart';
import 'package:flutter/material.dart';
import 'package:doctor/docotors.dart';

class Homepage extends StatelessWidget {
  final String? username;
  final String? password;
  const Homepage({Key? key, this.username, this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Color.fromARGB(141, 124, 130, 156),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/doc-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("اهلا بك في طبيبي ",
                style: TextStyle(
                    color: Color.fromARGB(255, 62, 62, 63), fontSize: 30.0)),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Docotors()));
              },
              child: Container(
                color: Color.fromARGB(255, 84, 122, 206),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.only(top: 10),
                child: const Text(
                  'استعرض قائمة الاطباء',
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Container(
                color: Color.fromARGB(255, 84, 122, 206),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.only(top: 10),
                child: const Text(
                  '  تسجيل الخروج',
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
