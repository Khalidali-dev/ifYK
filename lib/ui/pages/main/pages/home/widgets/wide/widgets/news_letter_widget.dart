import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          gradient: RadialGradient(
        center: const Alignment(0.0, 0.0),
        radius: 1.5,
        colors: [
          Colors.black,
          Colors.purple.withValues(alpha: 0.3),
          Colors.black,
        ],
        stops: const [0.1, 0.3, 0.9],
      )),
      child: Padding(
        padding: size.width > 500
            ? const EdgeInsets.all(50)
            : const EdgeInsets.all(20),
        child: Row(
          children: [
            SizedBox(
              width: size.width > 500 ? size.width * .3 : size.width * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subscribe to our newsletter",
                    style: GoogleFonts.delaGothicOne(
                        color: Colors.white,
                        fontSize: size.width > 500 ? 32 : 18,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    """
Sign up for your daily dose of creative
inspiration, learnings, and growth.
""",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Colors.grey.shade900,
                    child: TextField(
                      controller: subscribeController,
                      decoration: InputDecoration(
                        hintText: 'Enter Your E-mail',
                        contentPadding: size.width > 500
                            ? const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10)
                            : const EdgeInsets.symmetric(horizontal: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
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
            ),
          ],
        ),
      ),
    );
  }
}
