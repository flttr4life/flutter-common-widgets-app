import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../../../../common/widget-demo.dart';
import './demo.dart' as sizeBox;

const String _Text = """### **SizeBox简介**
> 常用的一个控件，设置具体尺寸。
- sizebox设置width，height时候，强制child宽高为该设置，
- sizebox的width，heigh为null，child自身设置
### **属性**
> width：宽
> height：高
- ex:200*50 sizebox
""";
const String _Text0 = """### **SizeOverflowBox简介**
> 一个特定大小的窗口小部件,将其原始约束传递给其子节点,可能会溢出。
### **属性**
> alignment：对齐
> size： 设置部件大小
- ex:为方便看效果，现设置幕布大小为(Container)200*50。图一
""";

const String _Text1 = """### 
- ex:图一，基础上添加一个不设置size属性的SizeOverflowBox。图二
""";
const String _Text2 = """### 
- ex:图二，添加size属性，100*20,图三
""";
const String _Text3 = """### 
- ex:图三，添加 alignment: Alignment.center,
""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Box/SizeOverflowBox';

  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'SizeOverflowBox',
      codeUrl: '',
      child: _sizedOverflowBoxCreate(),
      docUrl: 'https://docs.flutter.io/flutter/widgets/SizedBox-class.html',
    );
  }

  Column _sizedOverflowBoxCreate() {
    return new Column(
      children: <Widget>[
        MarkdownBody(
          data: _Text,
        ),
        sizeBox.SizeBoxDefault(
          curWidth: 200.0,
          curHeight: 50.0,
        ),
        SizedBox(height: 20.0),
        MarkdownBody(
          data: _Text0,
        ),
        Container(
          margin: new EdgeInsets.only(top: 10.0),
          color: Color(0xff880e4f),
          width: 200.0,
          height: 50.0,
        ),
        MarkdownBody(data: _Text1),
        Container(
          margin: new EdgeInsets.only(top: 10.0),
          color: Color(0xff880e4f),
          alignment: Alignment.topCenter,
          width: 200.0,
          height: 50.0,
          child: sizeBox.SizeOverflowBoxDefault(
            text: "SizeBox",
          ),
        ),
        MarkdownBody(data: _Text2),
        Container(
          margin: new EdgeInsets.only(top: 10.0),
          color: Color(0xff880e4f),
          width: 200.0,
          height: 50.0,
          child: sizeBox.SizeOverflowBoxDefault(
            text: "box",
            curSizeWidth: 100.0,
            curSizeHeight: 20.0,
          ),
        ),
        MarkdownBody(data: _Text3),
        Container(
          margin: new EdgeInsets.only(top: 10.0),
          color: Color(0xff880e4f),
          width: 200.0,
          height: 50.0,
          alignment: Alignment.center,
          child: sizeBox.SizeOverflowBoxDefault(
            text: "box",
            curSizeWidth: 100.0,
            curSizeHeight: 20.0,
          ),
        ),
      ],
    );
  }
}