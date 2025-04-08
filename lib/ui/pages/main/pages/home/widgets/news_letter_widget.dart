import 'package:ifyk_landing/ui/ui.dart';

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
      padding: size.width > 500
          ? const EdgeInsets.all(50)
          : const EdgeInsets.all(30),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(size.width > 500
                  ? "assets/png/subscribe_bg.png"
                  : "assets/png/sub bg mobile.png"))),
      child: size.width > 500
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NewsLetterTextWidget(),
                const Spacer(),
                PngAsset(
                  "email",
                  width: size.width * .3,
                  height: size.height * .5,
                )
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: NewsLetterTextWidget(),
            ),
    );
  }
}

class NewsLetterTextWidget extends StatelessWidget {
  NewsLetterTextWidget({
    super.key,
    this.isdesc = true,
  });

  TextEditingController subscribeController = TextEditingController();
  final bool isdesc;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width > 1100
          ? size.width * .3
          : size.width > 500
              ? size.width * .5
              : size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Text(
            "Subscribe to our newsletter",
            style: GoogleFonts.delaGothicOne(
                color: Colors.white,
                fontSize: size.width > 1100
                    ? 40
                    : size.width > 500
                        ? 36
                        : 32,
                fontWeight: FontWeight.w400),
          ),
          isdesc
              ? const Text(
                  """
Sign up for your daily dose of creative
inspiration, learnings, and growth.
    """,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              : const SizedBox.shrink(),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: Colors.grey.shade900,
            child: TextField(
              controller: subscribeController,
              decoration: InputDecoration(
                hintText: 'Email Address',
                hintStyle: const TextStyle(color: Color(0xEEF1EACC)),
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
              onPressed: () async {
                if (subscribeController.text.isNotEmpty) {
                  await ApiService().subscribe(
                      subscribeController.text.toString().trim(), context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please enter your email")));
                }
              },
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
