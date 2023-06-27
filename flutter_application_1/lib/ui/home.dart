import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/create_screen.dart';
import 'package:flutter_application_1/ui/update_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showDeleteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Peringatan !!!"),
          content: Text("Anda yakin akan menghapus?"),
          actions: [
            TextButton(
              child: Text("Batal"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Yakin Hapus"),
              onPressed: () {
                // Tambahkan aksi untuk menghapus data di sini
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Catat Cuan Kita"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CreateScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text("Total Pemasukan : Rp.1000"),
            SizedBox(height: 20),
            Text("Total Pengeluaran: Rp.1000"),
            ListTile(
              title: Text("makan siang"),
              subtitle: Text("Rp.2000"),
              leading: Icon(
                Icons.download,
                color: Colors.green,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UpdateScreen()),
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: _showDeleteDialog,
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("parkir"),
              subtitle: Text("Rp.2000"),
              leading: Icon(
                Icons.file_upload,
                color: Colors.red,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UpdateScreen()),
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: _showDeleteDialog,
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("makan malam"),
              subtitle: Text("Rp.2000"),
              leading: Icon(
                Icons.download,
                color: Colors.green,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UpdateScreen()),
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: _showDeleteDialog,
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
