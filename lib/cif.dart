import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

void main() => runApp(cif());

class cif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CIF',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(43, 56, 97, 1),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url = "http://www.pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/cif.pdf";
  PDFDocument _doc;
  bool _loading;
  //PDFDocument doc = await PDFDocument.fromAsset('assets/test.pdf');
  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(pdfasset);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CIF"),
        backgroundColor: Color.fromRGBO(43, 56, 97, 1),
      ),

      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _doc,
              indicatorBackground: Color.fromRGBO(43, 56, 97, 1),
              // showIndicator: false,
              // showPicker: false,
            ),
    );
  }
}
