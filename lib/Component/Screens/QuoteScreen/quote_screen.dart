import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

import 'package:image_gallery_saver/image_gallery_saver.dart';
class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}
GlobalKey imagekey = GlobalKey();
class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [RepaintBoundary(
          key: imagekey,
          child: Container(
            // padding: EdgeInsets.all(8),
            height: h * 0.990,
            width: w * 0.980+12,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/Images/EntryScreenimg.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: h * 0.042,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 4,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.3,
                      ),
                      IconButton(
                        onPressed: () async {
                          RenderRepaintBoundary boundary = imagekey.currentContext!.findRenderObject as RenderRepaintBoundary;
                          ui.Image image = (await boundary.toImage());
                          ByteData? bytedata = await image.toByteData(format: ui.ImageByteFormat.png);
                          Uint8List img = bytedata!.buffer.asUint8List();
                          ImageGallerySaver.saveImage(img);
                        },
                        icon: Icon(
                          Icons.bookmark_outline_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.diamond_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.20,
                ),
                Expanded(
                  flex: 3,
                  child: SelectableText(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h * 0.4,
                      width: w * 0.099 + 15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff70687E),
                          border: Border.all(color: Color(0xff574F6A), width: 2)),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                    SizedBox(
                      width: w * 0.050,
                    ),
                    Container(
                      height: h * 0.4,
                      width: w * 0.099 + 15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff70687E),
                          border: Border.all(color: Color(0xff574F6A), width: 2)),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),],
      ),
    );
  }
}
