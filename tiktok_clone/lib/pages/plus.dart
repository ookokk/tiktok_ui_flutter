import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/common_buttons.dart';
import '../util/constants.dart';
import 'package:tiktok_clone/service/select_photo_options_page.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class UserPlusPage extends StatefulWidget {
  const UserPlusPage({super.key});

  static const id = 'set_photo_screen';

  @override
  State<UserPlusPage> createState() => _UserPlusPageState();
}

class _UserPlusPageState extends State<UserPlusPage> {
  File? _image;
  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        _image = img;
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOptionsScreen(onTap: _pickImage),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Share A Photo or Video',
                        style: kHeadTextStyle,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Posts make your profile more engaging',
                        style: kHeadSubtitleTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      _showSelectPhotoOptions(context);
                    },
                    child: Center(
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: _image == null
                              ? const Text(
                                  'No image selected',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              : CircleAvatar(
                                  backgroundImage: FileImage(_image! as File),
                                  radius: 200.0,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  CommonButtons(
                    onTap: () => _showSelectPhotoOptions(context),
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    textLabel: 'Share Photo',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
