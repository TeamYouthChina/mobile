import 'package:flutter/material.dart';



class TextSection extends StatefulWidget {


  int lines;

  TextSection({
    Key key,
    this.lines,

}):super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextSection(lines);
  }
}
  class _TextSection extends State<TextSection>{

  int _lines;
_TextSection(this._lines

  );



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Lake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the Bernese',
      overflow: TextOverflow.clip,
      maxLines: _lines,
      //constraints: BoxConstraints.expand(height:Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,),
    );
  }
}
