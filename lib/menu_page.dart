import 'package:app/menu.dart';
import 'package:app/pesanpage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Menumakanan extends StatelessWidget {
  List<Menu> listfood = [];

  Menumakanan({super.key});

  void dummyMenu() {
    listfood.add(Menu(
        nama: 'Sate Ayam',
        deskripsi: "Sate yang dibuat dari ayam",
        harga: 20000,
        gambar: 'satemadura.jpg'));
    listfood.add(Menu(
        nama: 'Sate Padang',
        deskripsi: "Sate Padang Rempah",
        harga: 20000,
        gambar: 'satepadang.jpg'));
    listfood.add(Menu(
        nama: 'Nasi Goreng',
        deskripsi: "Nasi Goreng Semarang",
        harga: 12000,
        gambar: 'nasigoreng.jpg'));
    listfood.add(Menu(
        nama: 'Mie Goreng',
        deskripsi: "Mie Goreng Semarang",
        harga: 12000,
        gambar: 'miegoreng.jpg'));
    listfood.add(Menu(
        nama: 'Mie Dog-Dog',
        deskripsi: "Mie Dog Dog Semarang",
        harga: 12000,
        gambar: 'miedokdok.jpg'));
    listfood.add(Menu(
        nama: 'Mie Ayam',
        deskripsi: "Mie Ayam Bali",
        harga: 10000,
        gambar: 'mieayam.jpg'));
    listfood.add(Menu(
        nama: 'Siomay',
        deskripsi: "Siomay Tengiri Bandung",
        harga: 10000,
        gambar: 'siomay.jpg'));
    listfood.add(Menu(
        nama: 'Kwetiau',
        deskripsi: "Kwetiau China",
        harga: 13000,
        gambar: 'kwetiau.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    dummyMenu();
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan Menu"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  'assets/${listfood[index].gambar}',
                  width: 120,
                  height: 250,
                ),
                title: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "${listfood[index].nama}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Column(
                  children: [
                    Text("${listfood[index].deskripsi}"),
                    Text("Rp . ${listfood[index].harga}"),
                  ],
                ),
                trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PesanPage(
                                    pesananMenu: listfood[index],
                                  )));
                    },
                    child: Text("Beli")),
              );
            },
            itemCount: listfood.length,
          ))
        ],
      ),
    );
  }
}
