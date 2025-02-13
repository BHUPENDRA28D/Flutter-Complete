import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UploadImagePage extends StatefulWidget {
  const UploadImagePage({super.key});

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print("No image Selected");
    }
  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });
    var stream = new http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var request = new http.MultipartRequest('POST', uri);
    request.fields['title'] = 'Static Title';

    var multiport = new http.MultipartFile('image', stream, length);

    request.files.add(multiport);
    var response = await request.send();
    if (response.statusCode == 200) {
      print("image Uploaded");
      setState(() {
        showSpinner = false;
      });
    } else {
      print("image Uploaded failed");
      setState(() {
        showSpinner = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: getImage,
            child: Container(
                child: image == null
                    ? Center(
                        child: Text("Pick a Image"),
                      )
                    : Container(
                        child: Center(
                          child: Image.file(
                            File(image!.path).absolute,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      )),
          ),
          SizedBox(
            height: 150,
          ),
          GestureDetector(
              onTap: uploadImage,
              child: Container(
                child: Center(child: Text("Upload")),
                color: Colors.green,
                width: 250,
                height: 50,
              )),
        ],
      ),
    );
  }
}
