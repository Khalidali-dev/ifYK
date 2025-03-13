import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/services/api_service.dart';

class NewsLetterWidget extends StatelessWidget {
  const NewsLetterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      margin: size.width > 500
          ? const EdgeInsets.all(30)
          : const EdgeInsets.all(20),
      shadowColor: Colors.grey,
      color: Colors.grey.shade900,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width > 500 ? 45 : 25)),
      child: Padding(
        padding: size.width > 500
            ? const EdgeInsets.all(50)
            : const EdgeInsets.all(20),
        child: size.width > 500
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: SubscribeTextWidget(),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: SubscribeEmailWidget(),
                  )
                ],
              )
            : Column(
                children: [
                  const SubscribeTextWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  SubscribeEmailWidget()
                ],
              ),
      ),
    );
  }
}

class SubscribeTextWidget extends StatelessWidget {
  const SubscribeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Subscribe to our newsletter",
        style: GoogleFonts.delaGothicOne(
            color: Colors.white,
            fontSize: size.width > 500 ? 32 : 24,
            fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        "Get up to date with our product",
        style: TextStyle(
            color: Colors.white,
            fontSize: size.width > 500 ? 21 : 16,
            fontWeight: FontWeight.w400),
      )
    ]);
  }
}

class SubscribeEmailWidget extends StatelessWidget {
  SubscribeEmailWidget({
    super.key,
  });
  final subscribeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextField(
      controller: subscribeController,
      decoration: InputDecoration(
          hintText: 'Enter Your E-mail',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.width > 500 ? 19 : 25),
              borderSide: BorderSide(color: Colors.grey.shade700)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.width > 500 ? 19 : 25),
              borderSide: BorderSide(color: Colors.grey.shade700)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.width > 500 ? 19 : 25),
              borderSide: BorderSide(color: Colors.grey.shade700)),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const StadiumBorder()),
                onPressed: () async =>
                    await ApiService().subscribe(subscribeController.text),
                child: const Text(
                  "Subscribe",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )),
          )),
    );
  }
}
