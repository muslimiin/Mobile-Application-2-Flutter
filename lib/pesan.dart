import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:date_format/date_format.dart';
import 'detail_pesanan.dart';

class PagePesan extends StatefulWidget {
  @override
  _PagePesanState createState() => _PagePesanState();
}

class _PagePesanState extends State<PagePesan> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  List<String> _jenis = ['', 'Telor Asin', 'Telor Mentah', 
  'Bebek Potong'];
  String _nJenis = "";
  int _groupValue1 = 0;
  TextEditingController namaController = TextEditingController();
  TextEditingController telpController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  String nama = "", telp = "", alamat = "", jumlah = "";

  var finaldate;
  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = formatDate(order, [yyyy, '/', mm, '/', dd]);
    });
    
  }
  Future<DateTime> getDate() {      
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemesanan"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  hintText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: telpController,
                decoration: InputDecoration(
                  hintText: 'Nomor Telepon',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: alamatController,
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Alamat',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: <Widget>[
                  Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: finaldate == null
                    ? Text(
                        "Pesan Untuk Tanggal",
                        textScaleFactor: 1.5,
                      )
                    : Text(
                        "$finaldate",
                        textScaleFactor: 1.5,
                      ),
              ),
                  RaisedButton(
                    onPressed: callDatePicker,
                    color: Colors.grey,
                    child:
                        Icon(Icons.date_range)
                  ),
                ],
              ),
              SizedBox(height: 14,),
              Text(
                "Jenis Pesanan : ", 
                style : TextStyle(color: Colors.black, fontSize: 16.0)
              ),
              DropdownButtonFormField(
                onChanged: (String value) {
                  setState(() {
                    _nJenis = value;
                  });
                },
                value: _nJenis,
                items: _jenis.map((String value) {
                  return DropdownMenuItem(child: Text(value), value: value,);
                }).toList(),
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: jumlahController,
                decoration: InputDecoration(
                  hintText: 'Jumlah Pesan',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Simpan"),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Nama : "+namaController.text.toString()+"\n"+
                         "Nomor Telepon : "+telpController.text.toString()+"\n"+
                         "Alamat : "+alamatController.text.toString()+"\n"+
                         "Pesan Untuk Tanggal : $finaldate"+"\n"+
                         "Jenis Pesanan : "+_nJenis+"\n"+
                         "Jumlah Pesanan : "+jumlahController.text.toString(),
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blueAccent,
                    textColor: Colors.white,
                    fontSize: 16.0
                  );
                  setState(() {
                    nama = namaController.text;
                    telp = telpController.text;
                    alamat = alamatController.text;
                    jumlah = jumlahController.text;
                  });
                  Navigator.push(context, 
                    MaterialPageRoute(
                        builder: (context) => 
                        PagePesanan("Nama Lengkap : $nama \n"+
                                    "Nomor Telepon : $telp \n"+
                                    "Alamat : $alamat \n"+
                                    "Pesan Untuk Tanggal : $finaldate \n"+
                                    "Jenis Pesanan : $_nJenis \n"+
                                    "Jumlah Pesanan : $jumlah"),
                    ),
                  );
                },
              ),
              
            ],
          ),
        )
      ),
    );
  }
}