import 'package:design/navigationpage/navicons.dart';
import 'package:flutter/material.dart';

class TopBarBack extends StatelessWidget implements PreferredSizeWidget {
  const TopBarBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromARGB(255, 111, 177, 255),
        toolbarHeight: 90,
        leading: BackButton(
              color: Colors.black
            ),
        title:    
            Row(children: <Widget>[
              Spacer(flex: 2,),
              ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 111, 177, 255)),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 12),
                height: 66,
                child: Image.asset("lib/assets/Logo-Transparent.png"),
              ),
            ),
            Spacer(flex:6),
            ],)
            
            
          
        );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
