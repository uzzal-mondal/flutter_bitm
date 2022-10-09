import 'package:flutter/material.dart';
import 'package:flutter_bitm/ui/details_page.dart';

class ListTitlePage extends StatelessWidget {
  const ListTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.00),
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
              },
              tileColor: Colors.deepPurple,
              leading: const Icon(
                Icons.person,
                color: Colors.white,
                size: 32,
              ),
              title: const Text(
                "Messi.",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Footballer design issue afksjdkfjdskfldsjfkldsjklfjdsdklfjdsklfjsdklfjdskllfjdsksllfjsdkdsllfjsdklfjsdklfjdsdjjfkdsljfklsdjfklsdfjsdklfsdjj, not so fixed.",
                style: TextStyle(color: Colors.black87),
              ),
              isThreeLine: false,
              trailing: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  side: BorderSide(color: Colors.black87)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              horizontalTitleGap: 25,
            ),

          ],
        ),
      ),
    );
  }
}
