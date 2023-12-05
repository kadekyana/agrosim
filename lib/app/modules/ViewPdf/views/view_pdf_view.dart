import 'dart:io';
import 'package:agrosim/notif.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class ViewPdfView extends StatefulWidget {
  final String file;
  const ViewPdfView({Key? key, required this.file}) : super(key: key);

  @override
  State<ViewPdfView> createState() => _ViewPdfViewState();
}

class _ViewPdfViewState extends State<ViewPdfView> {
  final NotificationService notificationService = NotificationService();
  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  final Dio dio = Dio();

  // Future<String> getPdf() async {
  //   var file = await DefaultCacheManager().getSingleFile(widget.file);
  //   return file.path;
  // }

  void getPdf() async {
    // Buat Directory
    Directory external = Directory('storage/emulated/0/Documents/Materi');

    final folder = Directory(external.path);
    final String linkDownload = widget.file;

    if (!(await folder.exists())) {
      await folder.create(recursive: true);
      try {
        DateTime tanggal = DateTime.now();
        String timestamp = DateFormat('yyyy-MM-dd').format(tanggal);
        final response = await dio.download(
            linkDownload, '${folder.path}/Materi_$timestamp.pdf');
        WidgetsBinding.instance.addPostFrameCallback((_) {
          notificationService.showNotificationDownload(
              2, 'Download Berhasil', 'Materi Disimpan Di Folder Document');
        });
      } catch (e) {
        print(e);
      }
    } else {
      try {
        DateTime tanggal = DateTime.now();
        String timestamp = DateFormat('yyyy-MM-dd').format(tanggal);
        final response = await dio.download(
            linkDownload, '${folder.path}/Materi_$timestamp.pdf');
        WidgetsBinding.instance.addPostFrameCallback((_) {
          notificationService.showNotificationDownload(
              2, 'Download Berhasil', 'Materi Disimpan Di Folder Document');
        });
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEBE4D1),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xffE53E34),
            )),
        title: Text(
          'AGROSIM',
          style: GoogleFonts.alfaSlabOne(color: Color(0xffE53E34)),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              getPdf();
            },
            icon: Icon(
              Icons.download,
              color: Color(0xffE53E34),
            ),
          ),
        ],
      ),
      body: SfPdfViewer.network(widget.file),
    );
  }
}
