import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/widgets/image_source_card.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/the_image_source_enum.dart';

class PlantImage extends StatefulWidget{

  const PlantImage({super.key});
  @override
  State<PlantImage> createState() => _PlantImageState();
}
class _PlantImageState extends State<PlantImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 64,
          backgroundColor: kPrimaryColor.withOpacity(0.6),
          backgroundImage: FileImage(image),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            iconSize: 45,
            color: Colors.white38,
            onPressed: (){
              buildImageBottomSheet(context);
              //pickImage();
            },
          ),
        )
      ],
    );
  }

  Future<dynamic> buildImageBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                backgroundColor: kBottomSheetColor,
                context: context,
                builder: (context){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageSourceCard(
                          icon: Icons.camera_alt,
                          iconColor: Colors.white70,
                          onPressed: (){
                            pickImage(imageSource: TheImageSource.camera);
                          },
                          name: 'Camera'
                      ),
                      ImageSourceCard(
                          icon: Icons.image_rounded,
                          iconColor: Colors.blue.shade600,
                          onPressed: (){
                            pickImage(imageSource: TheImageSource.gallery);
                          },
                          name: 'Gallery'
                      ),
                    ],
                  );
                }
            );
  }


  File image=File(ImagesApp.agriSensorImage);
  final imagePicker=ImagePicker();
  pickImage ({required TheImageSource imageSource}) async {
    XFile? pickedImage;
    if(imageSource==TheImageSource.camera){
      pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    }
    if(imageSource==TheImageSource.gallery){
      pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    }
    if(pickedImage!=null){
      setState(() {
        image = File(pickedImage!.path);
      });
    }
  }
}