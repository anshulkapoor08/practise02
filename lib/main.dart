import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Application(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  late TabController _tcontroler;
  @override
  void initState() {
    super.initState();
    _tcontroler = TabController(length: 3, vsync: this);
  }

  String mtext = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: const Text(
          "Mr.Kapoor",
        ),
        backgroundColor: Colors.blue,
        titleSpacing: 82.0,
        elevation: 30.0,
        leading: const Icon(Icons.menu),
        bottom: TabBar(
          controller: _tcontroler,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.supervisor_account),
            ),
            Tab(
              icon: Icon(Icons.dashboard),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  mtext = " This is arrow button";
                });
              },
              icon: const Icon(Icons.arrow_circle_right)),
          const SizedBox(
            width: 30,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  mtext = " This is close button";
                });
              },
              icon: const Icon(Icons.close_outlined)),
        ],
      ),
      body: TabBarView(
        controller: _tcontroler,
        children: const [
          Center(
            child: Text('This is home'),
          ),
          Center(
            child: Text('this is account'),
          ),
          Center(
            child: Text('This is used for close'),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blueAccent,
        child: TabBar(
          controller: _tcontroler,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.supervisor_account),
            ),
            Tab(
              icon: Icon(Icons.dashboard),
            ),
          ],
        ),
      ),

    );
  }
}
