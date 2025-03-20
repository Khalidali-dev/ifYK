import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/constants.dart';
import 'package:ifyk_landing/models/blogs_model.dart';
import 'package:ifyk_landing/services/api_service.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/widgets/compact_footer.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/news_letter_widget.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

class BlogsContent extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BlogsContent({
    super.key,
    required this.tabsRouter,
  });

  Widget mailchimpImage(String imageUrl, String title, Size size,
      {double width = 300, double height = 200}) {
    if (kIsWeb) {
      final viewId = 'mailchimp-image-${imageUrl.hashCode}';

      ui_web.platformViewRegistry.registerViewFactory(
        viewId,
        (int viewId) {
          final imgElement = html.ImageElement()
            ..src = imageUrl
            ..style.border = 'none'
            ..style.borderRadius = '6px'
            ..style.width = '${width}px'
            ..style.height = '${height}px';
          return imgElement;
        },
      );
      return Padding(
        padding: EdgeInsets.symmetric(vertical: size.width > 500 ? 20 : 0),
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              HtmlElementView(viewType: viewId),
              Positioned(
                left: 20,
                right: 20,
                bottom: 50,
                child: Container(
                  width: width,
                  color: Colors.transparent,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width > 500 ? 15 : 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double maxWidth = 800;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth
        ? SizeUtil.screenWidth(context)
        : maxWidth;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(size.width > 500 ? 30 : 20),
            child: Container(
              width: size.width,
              height: size.width > 500 ? size.height * .7 : size.height * .25,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage("assets/png/Background.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "World News",
                    style: TextStyle(
                        fontSize: size.width > 500 ? 12 : 10,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Economic turmoil markets react to global trade tensions",
                    style: TextStyle(
                        fontSize: size.width > 500 ? 32 : 14,
                        fontWeight: FontWeight.w500),
                  ),
                  height(5),
                  Row(
                    children: [
                      Text(
                        "AUG 9, 2024",
                        style: TextStyle(
                            fontSize: size.width > 500 ? 12 : 10,
                            fontWeight: FontWeight.w400),
                      ),
                      width(size.width * .04),
                      Text(
                        "WADE WARREN",
                        style: TextStyle(
                            fontSize: size.width > 500 ? 12 : 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          height(size.width > 500 ? 30 : 10),
          Padding(
            padding: EdgeInsets.all(size.width > 500 ? 30 : 20),
            child: SizedBox(
              width: size.width,
              height: size.width > 500 ? size.height * .4 : size.height * .7,
              child: FutureBuilder<BlogsModel?>(
                  future: ApiService().getAllBlogs(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text("Something went wrong..."),
                      );
                    }
                    return ListView.separated(
                      separatorBuilder: (context, index) =>
                          size.width > 500 ? width(20) : height(20),
                      itemCount: snapshot.data!.data!.length,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection:
                          size.width > 500 ? Axis.horizontal : Axis.vertical,
                      itemBuilder: (context, index) {
                        final blog = snapshot.data!.data![index];
                        return mailchimpImage(
                            blog.image.toString(), blog.title.toString(), size,
                            width: size.width > 500
                                ? size.width * .25
                                : size.width,
                            height: size.width > 500
                                ? size.height * .3
                                : size.height * .25);
                      },
                    );
                  }),
            ),
          ),
          height(size.width > 500 ? 40 : 10),
          Padding(
            padding: EdgeInsets.all(size.width > 500 ? 30 : 20),
            child: NewsLetterWidget(),
          ),
          height(size.width > 500 ? 40 : 10),
          size.width > 500 ? WideFooter() : const CompactFooter(),
        ],
      ),
    );
  }
}
