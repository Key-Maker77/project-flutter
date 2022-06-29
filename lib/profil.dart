import 'package:flutter/material.dart';
import 'package:uts_flutter_project/login.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
        actions: [
          TextButton.icon(
            label: const Text(
              'Logout',
              style: TextStyle(color: Colors.black54),
            ),
            icon: const Icon(
              Icons.logout_rounded,
              color: Colors.black54,
            ),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => LoginPage());
              Navigator.pushReplacement(context, route);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  width: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/HMTI2.jpg'),
                      radius: 95.0,
                    ),
                  ),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 2.0,
                      )),
                ),
                Text(
                  'My Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Rifqi Nur Fauzi Ardiansyah',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25.0),
                ),
                Text(
                  'Padalarang, Bandung Barat',
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 15.0),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.whatsapp,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.tiktok,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'About',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 25.0),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Jurusan : Teknik Informatika',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 15.0),
                ),
                Text(
                  'NIM  : D111911079',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Rifqi Nur Fauzi Ardiansyah adalah seorang mahasiswa jurusan Teknik Informatika, walaupun dengan keterbatasan yang ada tidak membuat saya patah semangat untuk bisa berkarir dibidang ini',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
