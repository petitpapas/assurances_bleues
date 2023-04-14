import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GridMenuIcon extends StatelessWidget {
  const GridMenuIcon({Key? key, required this.gridModel, required this.size, this.padding = 2.0, this.borderColor,
    this.decoration, required this.press,}) : super(key: key);

  final GridModel gridModel;
  final double size;
  final double padding;
  final Color? borderColor;
  final Decoration? decoration;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Color textColor = gridModel.textColor ?? const Color(0xFF151C2A);
    Color borderC = borderColor ?? Colors.grey.withOpacity(0.2);

    return GestureDetector(
        onTap: press,
        // onTap: () {
        //   if(isNotEmpty(gridModel.routeName)){
        //     Navigator.of(context).pushNamed(gridModel.routeName);
        //   }
        // },
        child: SizedBox(
          // color: Colors.green,
          width: size,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: size * .60,
                height: size * .60,
                padding: EdgeInsets.all(padding), // border width
                decoration: decoration ?? BoxDecoration(
                    color: gridModel.bgColor,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: borderC, width: 0.25),
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(16),
                        right: Radius.circular(16)
                    )
                ),
                child: SvgPicture.asset(gridModel.imagePath),
              ),

              SizedBox(height: size * .02),

              Expanded(
                child: Text(gridModel.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12, color: textColor
                  ),
              ),)
            ],
          ),
        )
    );
  }
}


class GridModel {
  String _imagePath;
  String _title;
  Color _color;
  String routeName = '';
  Color? bgColor;
  Color? textColor;

  GridModel(this._imagePath, this._title, this._color, this.routeName, this.bgColor, this.textColor);

  Color get color => _color;

  set color(Color value) {
    _color = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get imagePath => _imagePath;

  set imagePath(String value) {
    _imagePath = value;
  }


}