import 'package:basic_learn/page_dua.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageSatu')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halo Ini Halaman Satu"),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => HomePage());
              },
              child: Text("Ke Halaman Home"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => PageDua()),
                // );
                Get.to(() => PageDua());
              },
              child: Text("Ke Halaman Dua"),
            ),
          ],
        ),
      ),
    );
  }
}
