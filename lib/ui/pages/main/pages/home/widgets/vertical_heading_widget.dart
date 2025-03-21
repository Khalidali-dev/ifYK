import 'package:ifyk_landing/ui/ui.dart';

class VerticalHeadingWidget extends StatelessWidget {
  const VerticalHeadingWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.fontSize1,
    required this.fontSize2,
    required this.weight1,
    required this.weight2,
    required this.color1,
    required this.color2,
  });

  final String title1, title2;
  final double fontSize1, fontSize2;
  final FontWeight weight1, weight2;
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: AutoSizeText(
            title1,
            maxLines: 1,
            minFontSize: 15,
            style: GoogleFonts.delaGothicOne(
                fontWeight: weight1, fontSize: fontSize1, color: color1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: AutoSizeText(
            title2,
            maxLines: 1,
            minFontSize: fontSize2,
            style: GoogleFonts.delaGothicOne(
              fontWeight: weight2,
              fontSize: fontSize2,
              color: color2,
            ),
          ),
        ),
      ],
    );
  }
}
