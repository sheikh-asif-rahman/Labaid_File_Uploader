import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadDocument extends StatefulWidget {
  const UploadDocument({super.key});

  @override
  State<UploadDocument> createState() => _UploadDocumentState();
}

class _UploadDocumentState extends State<UploadDocument> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile> imageFileList = [];

//for geting multiple image from gallary
  void selectImage() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList.addAll(selectedImages);
    }
    print(imageFileList);
  }

//for capture from camara
  Future getImage(ImageSource media) async {
    var img = await imagePicker.pickImage(source: media);
    setState(() {
      imageFileList.add(img!);
    });
    print(imageFileList);
  }

  //show popup dialog
  void _imageSelect() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      selectImage();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //top bar part
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 15,
          title: const Text(
            "Upload Document",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          //go back from this page button------------------>//
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue[900],
              child: IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        //body part
        body: Column(children: [
          //Invoice input part
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            //decoration for border and color
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            alignment: Alignment.center,
            child: TextFormField(
              //get value to controller
              // controller: emailController,
              cursorColor: Colors.blue,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                  icon: Icon(
                    Icons.numbers_outlined,
                    color: Colors.black,
                  ),
                  labelText: "Invoice",
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          //pick image part
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.45,
                height: 50,
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.pinkAccent;
                        }
                        return Colors.lightBlueAccent;
                      },
                    ),
                  ),
                  //on press response code
                  onPressed: () {
                    _imageSelect();
                  },
                  child: const Text(
                    'Pick',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //pick image part
              Container(
                width: size.width * 0.45,
                height: 50,
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.pinkAccent;
                        }
                        return Colors.greenAccent;
                      },
                    ),
                  ),
                  //on press response code
                  onPressed: () {},
                  child: const Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          //show the images part
          Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: imageFileList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      //onTap code here//
                      onTap: () => {},
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            AspectRatio(
                                aspectRatio: 1,
                                //future code from data base
                                child: Image.file(
                                  File(imageFileList[index].path),
                                  fit: BoxFit.cover,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 200,
                                )),
                          ],
                        ),
                      ),
                    );
                  })),
        ]),
      ),
    );
  }
}
