import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FlutterKahvecisi());
}

class FlutterKahvecisi extends StatelessWidget {
  const FlutterKahvecisi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Tüm uygulamanın varsayılan font ailesini tanımlamak için MaterialApp adı altında tanımlama yapman gerekli
      //theme: ThemeData(fontFamily: 'fontAdi'),
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize
                  .min, //Column dikeyde tüm alanı kaplarsa ortalanamaz.
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('assets/images/kahve.jpg'),
                ),
                Text(
                  'Flutter Kahvecisi',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.brown[900],
                      fontFamily: 'Courgette'),
                ),
                Text(
                  'BİR FİNCAN UZAĞINIZDA',
                  style: GoogleFonts.kalam(
                    //bu şekilde google fonts paketini de kullanabilirsin.
                    //fontfamily default hali roboto dur

                    //UYGUN FONTU BULDUKTAN SONRA BİLGİSAYARINA İNDİRİP KUR.
                    //NORMALDE FONTLAR İNTERNET ÜZERİNDEN ÇEKİLDİĞİ İÇİN SIKINTI OLUŞTURABİLİR.
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    thickness: 2,
                    height: 30,
                    color: Colors.brown[900],
                  ),
                ),
                Card(
                  color: Colors.brown[900],
                  margin: const EdgeInsets.symmetric(horizontal: 45),
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 35,
                    ),
                    title: Text(
                      'yakupselimucar@hotmail.com',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+90 553 331 9834',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
