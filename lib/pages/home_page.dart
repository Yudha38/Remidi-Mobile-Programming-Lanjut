import 'package:flutter/material.dart';

import '../models/mahasiswa.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
final List<Mahasiswa> mahasiswaList = [
  Mahasiswa('shafira indes prafitri','STI202102125'),
  Mahasiswa('ade setiawan','STI202102159'),
  Mahasiswa('dwi lusiani','STI202102170'),
  Mahasiswa('dipa ismail', 'STI202102209'),
  Mahasiswa('supriyono','STI202102222'),
  Mahasiswa('YUDHA', 'STI202102274'),
  Mahasiswa( 'ajeng dwi febriana','STI202102275'),
  Mahasiswa('bangun utomo putra','STI202102276'),
  Mahasiswa('tiyan desi wulandari', 'STI202102278'),
  Mahasiswa('septiani putri','STI202102330'),
  Mahasiswa('sri mulyaningsih', 'STI2021040110'),
];


    return Scaffold(
      body: ListView.builder(
        itemCount: mahasiswaList.length,
        itemBuilder:(context, index) {
          final mahasiswa = mahasiswaList[index];
          return Container(
          height: 90,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  child: Icon(Icons.person),
                ),
                title: Text(mahasiswa.nama, style: const TextStyle(fontSize: 18),),
                subtitle: Text(mahasiswa.nim, style: const TextStyle(fontSize: 16),),
              ),
            ),
          );
        },
        ),
    );
  }
}