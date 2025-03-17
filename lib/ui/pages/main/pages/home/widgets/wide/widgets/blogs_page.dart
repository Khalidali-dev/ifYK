import 'package:flutter/material.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_wrapper.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class BlogsWidget extends StatelessWidget {
  const BlogsWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return WideWrapper(
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-1.0, -0.5),
            radius: 1.2,
            colors: [
              Colors.purple,
              Colors.black,
            ],
            stops: [0.1, 0.9],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: size.width > 410 ? size.height * 0.6 : size.height * 0.5,
              child: GridView.builder(
                padding: EdgeInsets.all(size.width > 410 ? 30 : 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width:
                        size.width > 410 ? size.width * 0.25 : size.width * 0.8,
                    child: Card(
                      color: Colors.grey.shade900,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: size.width > 410 ? 180 : 150,
                              child: PngAsset(
                                'blog${index + 1}',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Sep 10, 2023',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Expanded(
                              child: Text(
                                "Mastering Digital Privacy: A Deep Dive into End-to-End Email Encryption",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width > 410 ? 21 : 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
