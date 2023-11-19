import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navicury'),
        centerTitle: true,
        backgroundColor: Color(0xff0c181c),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 24),
            child: modetitle(title: 'Espacios'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                containermodel1(vocal: 'A'),
                containermodel1(vocal: 'B'),
                containermodel1(vocal: 'C'),
                containermodel1(vocal: 'D'),
                SizedBox(
                  height: 160,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 24),
            child: modetitle(
              title: 'Equipos cenectados',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        containermodel2(title: 'Tv Cuarto', icon: Icons.tv),
                        containermodel2(
                            title: 'Refrigerador', icon: Icons.ac_unit_rounded)
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        containermodel2(
                            title: 'Puerta Sala', icon: Icons.door_back_door),
                        containermodel2(title: 'Cochera', icon: Icons.car_crash)
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        containermodel2(
                            title: 'Equipo de Sonido',
                            icon: Icons.library_music_sharp),
                        containermodel2(
                            title: 'Microhonda', icon: Icons.microwave)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class containermodel2 extends StatelessWidget {
  String title;
  IconData icon;
  containermodel2({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 64,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff0c181c),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 1), blurRadius: 2, color: Colors.blueGrey),
          BoxShadow(offset: Offset(0, -1), blurRadius: 2, color: Colors.white),
        ],
      ),
    );
  }
}

class modetitle extends StatelessWidget {
  String title;
  modetitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Color(0xff0c181c), fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class containermodel1 extends StatelessWidget {
  String vocal;
  containermodel1({required this.vocal});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        vocal,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff0c181c),
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(offset: Offset(0, 5), blurRadius: 5),
        ],
      ),
    );
  }
}
