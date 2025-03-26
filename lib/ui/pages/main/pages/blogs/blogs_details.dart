import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/utils.dart';

class BlogsDetailsPage extends StatelessWidget {
  const BlogsDetailsPage({super.key, required this.image, required this.desc});
  final String image, desc;

  Widget mailchimpImage(String imageUrl, String title, double height, Size size,
      {double width = double.infinity}) {
    if (kIsWeb) {
      final viewId = 'mailchimp-image-${imageUrl.hashCode}';
      ui_web.platformViewRegistry.registerViewFactory(
        viewId,
        (int viewId) {
          final iframe = html.IFrameElement()
            ..src = imageUrl
            ..style.border = 'none'
            ..style.width = '100%'
            ..style.height = '100%';

          return iframe;
        },
      );

      return Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.width > 500 ? size.height * .05 : size.height * .05,
            horizontal: size.width > 500 ? size.width * .28 : 0),
        child: Center(
          child: SizedBox(
            width: width,
            height: height,
            child: HtmlElementView(viewType: viewId),
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Blog Details"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width > 500 ? 80 : 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: size.width > 500 ? size.height * 0.4 : size.height * 0.3,
              alignment: Alignment.center,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: size.width,
                ),
                child: mailchimpImage(
                    image,
                    desc,
                    size.width > 500 ? size.height * 0.4 : size.height * 0.3,
                    size),
              ),
            ),
            height(20),

            // Description
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: size.width > 500 ? 80 : 20),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: size.width > 500 ? 18 : 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            height(30),
          ],
        ),
      ),
    );
  }
}
