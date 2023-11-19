import 'package:flutter/material.dart';
import 'package:retoflutter/pages/home_page.dart';

class initpage extends StatefulWidget {
  const initpage({super.key});

  @override
  State<initpage> createState() => _initpageState();
}

class _initpageState extends State<initpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://www.eltiempo.com/files/amp_galeria/uploads/2021/03/12/604b8d07ae692.jpeg',
                ),
                colorFilter:
                    ColorFilter.mode(Colors.black38, BlendMode.darken)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'NAVICURY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                  icon: Icon(
                    Icons.fingerprint,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Presiona en la huella para Ingresar',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 56,
              )
            ],
          ),
        ),
      ),
    );
  }
}
