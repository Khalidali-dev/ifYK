import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/services/repository.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/widgets/compact_footer.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class ContactCompactContent extends StatefulWidget {
  const ContactCompactContent({super.key});

  @override
  State<ContactCompactContent> createState() => _ContactCompactContentState();
}

class _ContactCompactContentState extends State<ContactCompactContent> {
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
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              autovalidateMode: _autoValidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "CONNECT",
                        style: GoogleFonts.unbounded(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        " WITH US",
                        style: GoogleFonts.unbounded(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: ColorPalette.primary ,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "HOW CAN WE HELP?",
                    style: GoogleFonts.unbounded(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Have a question? Fill out the form below, and we’ll get back to you as soon as possible.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.almarai(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: ColorPalette.subtitleColor,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const PngAsset(
                      'contact_us',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(height: 20),
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
          const CompactFooter(),
        ],
      ),
    );
  }
}
