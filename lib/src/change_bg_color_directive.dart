import 'dart:html';
import 'dart:math';

import 'package:angular/angular.dart';
import 'package:color/color.dart';


@Directive(selector: '[changeBgColorOnClick]')
class ChangeBgColorDirective {
  final Element _el;
  var rng = new Random();
  var randomColor;

  ChangeBgColorDirective(this._el);

  @Input()
  String defaultColor = '#ffffff';

  @HostListener('click')
  void onClick() => _setBgColor(defaultColor);

  void _setBgColor([String color]) {
    Color rgbColor = new Color.rgb( rng.nextInt(255), rng.nextInt(255), rng.nextInt(255) );
    randomColor = '#' + rgbColor.toHexColor().toString();
    _el.style.backgroundColor =  randomColor ?? color;
  }
}
