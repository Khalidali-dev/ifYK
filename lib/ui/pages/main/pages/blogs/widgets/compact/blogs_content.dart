import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/models/blogs_model.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/news_letter_widget.dart';

class BlogsContent extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BlogsContent({
    super.key,
    required this.tabsRouter,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.all(size.width > 500 ? 30 : 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: size.width > 500 ? size.height * .55 : size.height * .25,
            padding: const EdgeInsets.all(15),
             margin: const EdgeInsets.symmetric(horizontal:7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                    image: AssetImage("assets/png/greenheader.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height:
                      size.width > 500 ? size.height * .35 : size.height * .15,
                  width: size.width > 500 ? size.width * .5 : size.width * .8,
                  child: Card(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(size.width > 500 ? 30 : 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(size.width > 500 ? 10 : 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "UI DESIGN",
                                  style: TextStyle(
                                      fontSize: size.width > 500 ? 12 : 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Essential UI Design Tools for Designers",
                                  style: TextStyle(
                                      fontSize: size.width > 500 ? 32 : 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Card(
                                    color: const Color(0xffDF00FF),
                                    margin: EdgeInsets.only(
                                        top: size.width > 500 ? 20 : 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          size.width > 500 ? 15 : 10),
                                      child: const Text(
                                        "Read More",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: size.width > 500 ? 15 : 10,
                              backgroundImage:
                                  const AssetImage("assets/png/person1.png"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: size.width > 500 ? 30 : 10),
          LayoutBuilder(
            builder: (context, constraints) {
              return GridView.builder(
                padding: EdgeInsets.all(size.width > 500 ? 30 : 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width > 500 ? 3 : 2,
                  mainAxisSpacing: size.width > 500 ? 20 : 10,
                  crossAxisSpacing: size.width > 500 ? 20 : 10,
                  childAspectRatio: size.width > 500 ? 1 : .7,
                ),
                itemCount: blogs.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final blog = blogs[index];
                  return Card(
                    color: Colors.grey.shade900,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(size.width > 500 ? 16 : 10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: size.width > 500 ? 250 : 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(size.width > 500 ? 16 : 10),
                              topRight:
                                  Radius.circular(size.width > 500 ? 16 : 10),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/png/${blog.image}.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(size.width > 500 ? 20 : 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: size.width > 500 ? 10 : 0),
                              Text(
                                blog.category,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width > 500 ? 13 : 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: size.width > 500 ? 6 : 0),
                              Text(
                                blog.desc,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width > 500 ? 21 : 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: size.width > 500 ? 15 : 10,
                              backgroundImage:
                                  AssetImage("assets/png/${blog.profile}.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          SizedBox(height: size.width > 500 ? 30 : 10),
          NewsLetterWidget(),
        ],
      ),
    );
  }
}
