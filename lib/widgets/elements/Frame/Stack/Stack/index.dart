import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_rookie_book/common/widget-demo.dart';
import './demo.dart' as stack;

const String _stackText0 = """### **简介**
> 用于将多个子级相对于其框的边缘定位，多用于以简单方式重叠children
- 当第一个孩子置于底部时，堆栈按顺序绘制其子项。如果更改子项绘制顺序，可以使用新顺序重新建立堆栈
- 注意：stack的每一个子节点都已定位或为定位，定位子项必须至少一个非null属性的定位。

""";
const String _stackText1 = """### **属性**
> 1.alignment → AlignmentGeometry
- 对齐方式，默认是右上角,详情请点击Layout-row页面，类似
- 多个positioned叠加图层，Alignment.center事例
""";
const String _stackText2 = """### 
> fit → StackFit
- loose:放开了子节点宽高的约束，可以让子节点从0到最大尺寸
- expand: 子节点最大可能的占用空间，允许最大大小
- passthrough：不改变子节点约束

>textDirection → TextDirection
- 文本方向

> overflow → Overflow
- 超过的部分是否裁剪掉
- overflow: Overflow.clip/visible
""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Stack/Stack';

  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String _desc = "Stack 使用";

  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Stack',
      desc: _desc,
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/sanlu-0.0.4/lib/widgets/elements/Frame/Stack/Stack/demo.dart',
      docUrl: 'https://docs.flutter.io/flutter/widgets/Stack-class.html',
      child: new Container(
        child: _StackCreate(context),
      ),
    );
  }

  Column _StackCreate(BuildContext context) {
    return new Column(
      children: <Widget>[
        MarkdownBody(
          data: _stackText0,
        ),
        Column(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: 300.0,
              height: 100.0,
              color: Color(0xffe91e63),
              child: stack.StackDefault(),
            ),
            new Container(
              width: 300.0,
              height: 100.0,
              color: Color(0xffe91e63),
              //堆栈顺序替换掉
              child: stack.StackDefault2(),
            )
          ],
        ),
        SizedBox(height: 10.0),
        MarkdownBody(
          data: _stackText1,
        ),
        new Container(
          width: 300.0,
          height: 100.0,
          margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
          color: new Color(0xffe91e63),
          child: stack.StackPositioned(),
        ),
        MarkdownBody(
          data: _stackText2,
        ),
        new Container(
          width: 200.0,
          height: 200.0,
          color: new Color(0xffe91e63),
          child: stack.StackLayout(),
        ),
      ],
    );
  }
}