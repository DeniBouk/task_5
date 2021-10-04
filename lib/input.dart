import 'package:flutter/material.dart';

class SimpleInput extends StatelessWidget {
  TextEditingController namaController = TextEditingController();
  TextEditingController nomorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TASK 4'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namaController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  labelText: 'Nama',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nomorController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.phone_outlined,
                  ),
                  labelText: 'Nomor Telepon',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    // Tombol Navigator ke New Screen
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => home(
                                namaController.text, nomorController.text)),
                      );
                    },
                    child: Text('tambahkan'),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
