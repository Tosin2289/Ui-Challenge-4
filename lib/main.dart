import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List name = ['Photos & Video', '3d Photos'];
  List namee = ['268 item', '128 item'];
  List image = ['assets/cam1.jpg', 'assets/girlcam2.jpg'];
  List imagee = ['assets/cam2.jpg', 'assets/girlcam.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 220,
            color: Color.fromARGB(255, 243, 192, 210),
          ),
          Container(
            height: 220,
            width: 280,
            color: Color.fromARGB(255, 247, 245, 245),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 160,
                width: 230,
                child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 243, 192, 210)),
                          child: Column(children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 122, 144, 144),
                              ),
                            ),
                            Text(
                              namee[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 122, 144, 144),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 25),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(image[index]),
                                        fit: BoxFit.cover),
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 25),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imagee[index]),
                                        fit: BoxFit.cover),
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 25),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: (() {}),
                                      icon: Icon(Icons.add),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      );
                    })),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
