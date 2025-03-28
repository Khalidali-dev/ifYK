import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ifyk_landing/ui/ui.dart';

import 'blogs_details.dart';

class BlogsContent extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BlogsContent({
    super.key,
    required this.tabsRouter,
  });

  Widget headerImage(
    String imageUrl,
    String title,
    Size size, {
    double height = 300,
  }) {
    if (kIsWeb) {
      final viewId = 'mailchimp-image-${imageUrl.hashCode}';

      ui_web.platformViewRegistry.registerViewFactory(
        viewId,
        (int viewId) {
          final container = html.DivElement()
            ..style.width = '100%'
            ..style.height = '${height}px'
            ..style.position = 'relative'
            ..style.overflow = 'hidden';

          final imgElement = html.ImageElement()
            ..src = imageUrl
            ..style.width = '100%'
            ..style.height = '100%'
            ..style.borderRadius = '6px'
            ..style.objectFit = 'cover'
            ..style.pointerEvents = 'none';

          container.append(imgElement);

          return container;
        },
      );

      return SizedBox(
        width: double.infinity,
        height: height,
        child: Stack(
          children: [
            HtmlElementView(viewType: viewId),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.width > 500 ? 30 : 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomText(
                  label: title,
                  textColor: Colors.white,
                  fontSize: size.width > 500 ? 18 : 14,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  Widget mailchimpImage(String imageUrl, String title, Size size,
      {double width = 300, double height = 200, VoidCallback? onTap}) {
    if (kIsWeb) {
      final viewId = 'mailchimp-image-${imageUrl.hashCode}';

      ui_web.platformViewRegistry.registerViewFactory(
        viewId,
        (int viewId) {
          final container = html.DivElement()
            ..style.width = '${width}px'
            ..style.height = '${height}px'
            ..style.position = 'relative';

          final imgElement = html.ImageElement()
            ..src = imageUrl
            ..style.width = '90%'
            ..style.height = '100%'
            ..style.borderRadius = '6px'
            ..style.pointerEvents = 'none';

          container.append(imgElement);

          container.onClick.listen((_) {
            if (onTap != null) {
              onTap();
            }
          });

          return container;
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
                bottom: size.width > 500 ? 20 : 30,
                child: Container(
                  width: width,
                  color: Colors.transparent,
                  child: CustomText(
                    label: title,
                    textColor: Colors.white,
                    fontSize: size.width > 500 ? 15 : 12,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
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

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Blogs",
              style: GoogleFonts.delaGothicOne(
                  color: Colors.white,
                  fontSize: size.width > 500 ? 40 : 32,
                  fontWeight: FontWeight.w400),
            ),
          ),
          height(20),
          Padding(
            padding: EdgeInsets.all(size.width > 500 ? 30 : 20),
            child: SizedBox(
              width: size.width,
              height: size.width > 500 ? size.height * .93 : size.height * .52,
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
                    final item =
                        snapshot.hasData && snapshot.data!.data!.isNotEmpty
                            ? snapshot.data!.data!.last
                            : null;

                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(size.width > 500 ? 30 : 0),
                          child: SizedBox(
                              width: size.width,
                              height: size.width > 500
                                  ? size.height * .5
                                  : size.height * .22,
                              child: headerImage(
                                item!.image.toString(),
                                item.title.toString(),
                                size,
                                height: size.width > 500
                                    ? size.height * .5
                                    : size.height * .22,
                              )),
                        ),
                        height(size.width > 500 ? 30 : 50),
                        SizedBox(
                          height: size.width > 500
                              ? size.height * .3
                              : size.height * .2,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => width(20),
                            itemCount: snapshot.data!.data!.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final blog = snapshot.data!.data![index];
                              return mailchimpImage(
                                blog.image.toString(),
                                blog.title.toString(),
                                size,
                                width: size.width > 500
                                    ? size.width * .25
                                    : size.width,
                                height: size.width > 500
                                    ? size.height * .3
                                    : size.height * .26,
                                onTap: () {
                                  if (context.mounted) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlogsDetailsPage(
                                          image: blog.image.toString(),
                                          id: blog.id.toString(),
                                          title: blog.title.toString(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(size.width > 500 ? 30 : 0),
            child: NewsLetterWidget(),
          ),
          height(size.width > 500 ? 40 : 10),
          size.width > 500 ? WideFooter() : const CompactFooter(),
        ],
      ),
    );
  }
}
