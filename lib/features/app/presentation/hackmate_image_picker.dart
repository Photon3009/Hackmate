import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/hackmate_icons.dart';
import 'package:image_picker/image_picker.dart';

import '../../../configurations/configurations.dart';

class HackmateImagePicker extends StatelessWidget {
  HackmateImagePicker({
    super.key,
    this.pickedImagePath,
    required this.onImagePicked,
    required this.clearImageCallback,
    this.iconSize = kPadding * 2.5,
    this.imageUrl,
  });

  final String? pickedImagePath;
  final String? imageUrl;
  final VoidCallback clearImageCallback;
  final void Function(XFile image) onImagePicked;
  final double iconSize;

  final circleAvatarRadius = kPadding * 10;
  final circleAvatarColor = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          if (pickedImagePath != null)
            CircleAvatar(
              backgroundColor: circleAvatarColor,
              radius: circleAvatarRadius,
              foregroundImage: FileImage(File(pickedImagePath!)),
            )
          else if (imageUrl != null)
            CircleAvatar(
              backgroundColor: circleAvatarColor,
              radius: circleAvatarRadius,
              foregroundImage: CachedNetworkImageProvider(
                imageUrl!,
                headers: const {
                  'X-Appwrite-Project': kProjectId,
                },
              ),
            )
          else
            CircleAvatar(
              backgroundColor: circleAvatarColor,
              radius: circleAvatarRadius,
            ),
          Positioned(
            bottom: -kPadding,
            right: 0,
            child: GestureDetector(
              onTap: () async {
                if (pickedImagePath != null) {
                  clearImageCallback.call();
                  return;
                }

                final ImagePicker picker = ImagePicker();
                final XFile? image =
                    await picker.pickImage(source: ImageSource.gallery);
                if (image != null) onImagePicked.call(image);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: kPadding * 4,
                child: CircleAvatar(
                  radius: kPadding * 3,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: pickedImagePath == null
                      ? Icon(
                          HackmateIcons.camera,
                          color: Colors.white,
                          size: iconSize,
                        )
                      : Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: iconSize,
                        ),
                ),
              ),
            ),
          ),
        ],
      );
}
