import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/services/repository.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_wrapper.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class ContactWideContent extends StatefulWidget {
  final TabsRouter tabsRouter;
  const ContactWideContent({super.key, required this.tabsRouter});

  @override
  State<ContactWideContent> createState() => _ContactWideContentState();
}

class _ContactWideContentState extends State<ContactWideContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  bool _loading = false;
  bool? _result;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  _onSubmit (){
    if(!_loading){
      setState(() {
        _autoValidateMode = AutovalidateMode.always;
      });
    }
    if(_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      _formKey.currentState!.save();
      setState(() {
        _loading = true;
        _result = null;
      });
      Repository.submitMessage(
        _nameController.text,
        _emailController.text,
        _messageController.text,
      ).then((value){
        setState(() {
          _result = true;
        });
      }).onError((error, stackTrace){
        setState(() {
          _result = false;
        });
      }).whenComplete((){
        setState(() {
          _loading = false;
        });
      });
      // Future.delayed(const Duration(seconds: 1)).then((value){
      //   setState(() {
      //     _result = true;
      //     _loading = false;
      //   });
      // });
    }
  }


  @override
  Widget build(BuildContext context) {
    const double maxWidth = 1200;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth ? SizeUtil.screenWidth(context) : maxWidth;
    final double reactivePadding = (SizeUtil.screenWidth(context) - maxWidth)/1.7;
    final double leftPaddingWidth = reactivePadding < 30 ? 30 : reactivePadding;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              // constraints: const BoxConstraints(maxWidth: 1300),
              padding: EdgeInsets.only(left: leftPaddingWidth),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Form(
                      key: _formKey,
                      autovalidateMode: _autoValidateMode,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "CONNECT",
                                style: GoogleFonts.unbounded(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth/35,
                                ),
                              ),
                              Text(
                                " WITH US",
                                style: GoogleFonts.unbounded(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth/35,
                                  color: ColorPalette.primary ,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "HOW CAN WE HELP?",
                            style: GoogleFonts.unbounded(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth/55,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Have a question? Fill out the form below, and we’ll get back to you as soon as possible.",
                            style: GoogleFonts.almarai(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth/55,
                              color: ColorPalette.subtitleColor,
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            controller: _nameController,
                            validator: (value) => value?.isEmpty ?? true ? "Required" : null,
                            decoration: InputDecoration(
                              hintText: "Name",
                              filled: true,
                              fillColor: ColorPalette.jumpToBgColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )
                            ),
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            controller: _emailController,
                            validator: (value) => value?.isEmpty ?? true ? "Required" : null,
                            decoration: InputDecoration(
                                hintText: "Email address",
                                filled: true,
                                fillColor: ColorPalette.jumpToBgColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                            ),
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            controller: _messageController,
                            validator: (value) => value?.isEmpty ?? true ? "Required" : null,
                            maxLines: 4,
                            decoration: InputDecoration(
                                hintText: "Message",
                                filled: true,
                                fillColor: ColorPalette.jumpToBgColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                            ),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              ),
                              onPressed: _onSubmit,
                              child: const Text(
                                "Submit",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          if(_loading) const Center(
                            child: SizedBox(
                              height: 35,
                              width: 35,
                              child: CircularProgressIndicator()
                            ),
                          )
                          else const SizedBox(height: 35),
                          if(_result != null) Text(
                            _result! ? "Message Submitted" : "Something went wrong",
                            style: TextStyle(
                                color: _result! ? Colors.green : Colors.red
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Expanded(
                    flex: 6 ,
                    child: ClipRRect(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(70)),
                      child: PngAsset('contact_us', fit: BoxFit.fitWidth,),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: WideWrapper(
              maxWidth: maxWidth,
              child: WideFooter(topPadding: 50),
            ),
          )
        ],
      ),
    );
  }
}
