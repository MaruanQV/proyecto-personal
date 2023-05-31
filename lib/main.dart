import 'package:flutter/material.dart';
import 'package:applogin2/data/images_data.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(179, 74, 234, 240),
      ),
      title: "Mi App",
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/detalle': (context) => Detalle(),
        '/configuracion': (context) => Configuracion(),
        '/galeria': (context) => Galeria(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DUOMO DI MILANO 🤓",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'impact',
            )),
      ),
      body: Container(
        color: Color.fromARGB(255, 110, 109, 109),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              width: 500,
              child: Image.asset('assets/4.png', fit: BoxFit.fitWidth),
            ),
            Text(
              "CATEDRAL DE MILANO",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'impact'),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detalle'),
              child: Text('Detalles🌱'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/galeria'),
              child: Text('Galeria📷'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/configuracion'),
              child: Text('Catedrales de Italia 💒'),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detalle",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 30),
          ),
        ),
        body: Container(
          color: Color.fromARGB(221, 83, 82, 82),
          child: Column(
            children: [
              SizedBox(
                  width: 400, height: 350, child: Image.asset('assets/1.png')),
              Container(
                child: Text(
                  'La catedral de Milán (en italiano, Duomo di Milano) es una catedral gótica emplazada en la ciudad homónima. Es la sede episcopal de la Archidiócesis de Milán. Es una de las iglesias de culto católico más grandes del mundo, tiene 157 metros de largo pudiendo albergar hasta 40,000 personas en su interior. Las ventanas del coro tienen la reputación de ser las mayores que se conocen',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Color.fromARGB(255, 228, 220, 220),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CATEDRALES DE ITALIA"),
        ),
        body: Container(
          color: Color.fromARGB(221, 83, 82, 82),
          child: Column(
            children: [
              SizedBox(
                height: 190,
                width: 500,
                child: Image.asset(
                  'assets/10.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 200,
                width: 495,
                child: Image.asset('assets/9.png', fit: BoxFit.fitWidth),
              ),
              SizedBox(
                height: 200,
                width: 495,
                child: Image.asset(
                  'assets/11.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ));
  }
}

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeria"),
      ),
      body: Container(
          color: Color.fromARGB(221, 83, 82, 82),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 170,
                width: 500,
                child: Image.asset(
                  'assets/2.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 170,
                width: 500,
                child: Image.asset('assets/8.png', fit: BoxFit.fitWidth),
              ),
              SizedBox(
                height: 170,
                width: 500,
                child: Image.asset(
                  'assets/6.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          )),
    );
  }
}
