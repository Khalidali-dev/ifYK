import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/constants.dart';
import 'package:ifyk_landing/models/blogs_model.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/widgets/compact_footer.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/news_letter_widget.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/ready_to_explore_widget.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

class BlogsContent extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BlogsContent({
    super.key,
    required this.tabsRouter,
  });

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
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    size.width > 500 ? width(20) : height(20),
                itemCount: blogs.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection:
                    size.width > 500 ? Axis.horizontal : Axis.vertical,
                itemBuilder: (context, index) {
                  final blog = blogs[index];
                  return Container(
                    width: size.width > 500 ? size.width * .25 : size.width,
                    height: size.width > 500 ? size.height : size.height * .25,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/png/${blog.image}.png'),
                      ),
                    ),
                    child: Text(
                      blog.desc,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width > 500 ? 15 : 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          height(size.width > 500 ? 40 : 10),
          Padding(
            padding: EdgeInsets.all(size.width > 500 ? 30 : 20),
            child: NewsLetterWidget(),
          ),
          height(size.width > 500 ? 40 : 10),
          size.width > 500
              ? WideFooter()
              : const CompactFooter(),
        ],
      ),
    );
  }
}
