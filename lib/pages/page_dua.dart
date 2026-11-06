import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageDua')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halo Ini Halaman Dua"),
            // SizedBox(height: 5),
            // ElevatedButton(
            //   onPressed: () {
            //     // Get.to(() => HomePage());
            //   },
            //   child: Text("Ke Halaman Home"),
            // ),
            // SizedBox(height: 20),

            // ElevatedButton(onPressed: () {}, child: Text("Ke Halaman Dua")),
          ],
        ),
      ),
    );
  }
}
