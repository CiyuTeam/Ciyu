import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

//课程加号按钮
class PlusClassButton extends StatefulWidget {
  PlusClassButton({Key? key}) : super(key: key);

  @override
  _PlusClassButtonState createState() => _PlusClassButtonState();
}

class _PlusClassButtonState extends State<PlusClassButton> {
  @override
  Widget build(BuildContext context) {
    return ImageButton.round(
      image: Image.asset("images/plus.png"),
      radius: 24,
      color: Color.fromARGB(255, 232, 232, 232),
      onTap: null,
    );

  }
}



class ImageButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Image? image;
  Color? color;
  double? radius;
  double? size;
  ImageButton.round({
    Key? key,
    this.onTap,
    this.image,
    this.radius,
    this.color,
  }) : super(key: key);
  ImageButton({
    Key? key,
    this.onTap,
    this.image,
    this.size,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: size ?? 24,
        height: size ?? 24,
        decoration: radius != null ? BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(150.0))) : null,
        child: image,
      ),
      onTap: onTap,
    );
    // RawMaterialButton(
    //     padding: padding,
    //     onPressed: onPressed,
    //     child: icon,
    //     fillColor: color,
    //     shape: const RoundedRectangleBorder(
    //       side: BorderSide.none,
    //       borderRadius: BorderRadius.all(Radius.circular(100)),
    //     ));
  }
}