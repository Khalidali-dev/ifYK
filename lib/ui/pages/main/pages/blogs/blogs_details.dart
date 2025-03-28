import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ifyk_landing/ui/ui.dart';

class BlogsDetailsPage extends StatelessWidget {
  BlogsDetailsPage(
      {super.key, required this.image, required this.id, required this.title});
  final String image, id, title;

  late InAppWebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Blog Details"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: size.width > 500 ? 80 : 20,
              vertical: size.width > 500 ? 30 : 20),
          physics: const BouncingScrollPhysics(),
          child: FutureBuilder<String>(
            future: ApiService().fetchHtmlData(id),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("Something went wrong..."),
                );
              }

              return SizedBox(
                width: double.infinity,
                height: size.height,
                child: InAppWebView(
                  onWebViewCreated: (controller) async {
                    webViewController = controller;
                    await webViewController.loadData(
                        data: snapshot.data!,
                        mimeType: "text/html",
                        encoding: "utf-8");
                  },
                  onPermissionRequest: (controller, request) async {
                    return PermissionResponse(
                        resources: request.resources,
                        action: PermissionResponseAction.GRANT);
                  },
                ),
              );
            },
          )),
    );
  }
}
