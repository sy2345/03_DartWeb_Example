// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'year': '2015', 'population': 2},
    {'year': '2016', 'population': 4},
    {'year': '2017', 'population': 3},
    {'year': '2018', 'population': 2},
    {'year': '2019', 'population': 4},
    {'year': '2020', 'population': 6},
    {'year': '2021', 'population': 8},
    {'year': '2022', 'population': 10},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
