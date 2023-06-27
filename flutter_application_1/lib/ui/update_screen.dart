import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  final int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update"),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama"),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Text("Type Transaksi"),
                ListTile(
                  title: Text("Pemasukan"),
                  leading: Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Text("Pengeluaran"),
                  leading: Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Total"),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Simpan"),
                ),
              ],
            )),
      ),
    );
  }
}
