import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class NewsLetterWidget extends StatelessWidget {
  NewsLetterWidget({
    super.key,
  });
  final subscribeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(size.width > 500
                  ? "assets/png/subscribe_bg.png"
                  : "assets/png/sub bg mobile.png"))),
      child: Padding(
        padding: size.width > 500
            ? const EdgeInsets.all(50)
            : const EdgeInsets.all(20),
        child: size.width > 500
            ? Row(
                children: [
                  NewsLetterTextWidget(
                      subscribeController: subscribeController),
                  const Spacer(),
                  PngAsset(
                    "email",
                    width: size.width * .5,
                    height: size.height * .5,
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: PngAsset(
                      "email",
                      width: size.width * .5,
                      height: size.height * .2,
                    ),
                  ),
                  NewsLetterTextWidget(
                      subscribeController: subscribeController),
                ],
              ),
      ),
    );
  }
}

class NewsLetterTextWidget extends StatelessWidget {
  const NewsLetterTextWidget({
    super.key,
    required this.subscribeController,
  });

  final TextEditingController subscribeController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width > 500 ? size.width * .3 : size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Text(
            "Subscribe to our newsletter",
            style: GoogleFonts.delaGothicOne(
                color: Colors.white,
                fontSize: size.width > 500 ? 40 : 32,
                fontWeight: FontWeight.w400),
          ),
          const Text(
            """
Sign up for your daily dose of creative
inspiration, learnings, and growth.
    """,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: Colors.grey.shade900,
            child: TextField(
              controller: subscribeController,
              decoration: InputDecoration(
                hintText: 'Email Address',
                contentPadding: size.width > 500
                    ? const EdgeInsets.symmetric(vertical: 20, horizontal: 10)
                    : const EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(size.width, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () async {},
              child: const Text(
                "Submit",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
  }
}
