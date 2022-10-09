import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bitm/ui/list_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          "Flutter App Bar",
          textAlign: TextAlign.justify,
          style: TextStyle(
              decoration: TextDecoration.underline,
              backgroundColor: Colors.red),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.orange,
        ),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ListTitlePage()),
          );
        },
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                )),
            Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.amber,
                        child: const Text(
                          "First Expanded container",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 6,
                        child: Container(
                      color: Colors.pink,
                      child: const Text(
                        "Expanded Container.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 24,
                        ),
                      ),
                    ))
                  ],
                )),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
