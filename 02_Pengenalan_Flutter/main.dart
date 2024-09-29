import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Biodata Saya'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20), 
              const Center(
                child: Text(
                  'Biodata Pribadi',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadowColor: Colors.indigo.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Nama:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      const Text(
                        'Firman Maulana',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 20, thickness: 1),
                      const Text(
                        'Umur:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      const Text(
                        '20',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 20, thickness: 1),
                      const Text(
                        'Alamat:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      const Text(
                        'Jalan Puteran Berkoh No. 10',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 20, thickness: 1),
                      const Text(
                        'Hobi:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      const Text(
                        'Dota 2',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 20, thickness: 1),
                      const Text(
                        'Pekerjaan:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      const Text(
                        'Mahasiswa',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                  height: 30),
              const Center(
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.indigoAccent, 
                  ),
                ),
              ),
              const SizedBox(
                  height: 30),
              const Center(
                child: Text(
                  'lontopcx12@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigoAccent,
                  ),
                ),
              ),
              const SizedBox(
                  height: 30), 
              const Center(
                child: Text(
                  '+623252155524',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigoAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
