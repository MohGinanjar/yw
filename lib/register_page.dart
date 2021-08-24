import 'package:flutter/material.dart';
import 'package:yw/texttheme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'button_theme.dart';
import 'colortheme.dart';
import 'fieldcustom.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorC,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Selamat Datang",
                style: boldBlackFont,
                textAlign: TextAlign.start,
              ),
              Text(
                "Yuswa Teknik",
                style: boldBlackFont,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Silahkan daftar terlebih dahulu sebelum menggunakan layanan yang ada di Yuswa Teknik",
                style: semiBlackFont,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 25,
              ),
              FieldCustom(
                icon: Icons.person,
                hintext: "Username",
              ),
              FieldCustom(
                icon: MdiIcons.whatsapp,
                hintext: "Nomor Handphone",
              ),
              FieldCustom(
                icon: Icons.email,
                hintext: "Email",
              ),
              
              FieldCustomPass(
                icon: Icons.lock,
                hintext: "Masukan Kata Sandi",
              ),
              FieldCustomPass(
                icon: Icons.lock,
                hintext: "Ulangi Kata Sandi",
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: MediaQuery.of(context).size.width - (1 * defaultmargin),
                height: 100,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: colorA,
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                        color: colorD,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text("Atau"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: MediaQuery.of(context).size.width - (1 * defaultmargin),
                height: 100,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: colorA,
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.google, color: Colors.white,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                      ),
                      Text(
                        "Daftar Lewat Account Google",
                        style: TextStyle(
                            color: colorD,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Regiser");
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Jika sudah memiliki account? ",
                        style: TextStyle(
                          color: colorA,
                          fontSize: 18,
                        )),
                    TextSpan(
                      text: "Daftar",
                      style: TextStyle(
                        color: colorB,
                        fontSize: 18,
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
