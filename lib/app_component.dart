import 'package:angular/angular.dart';

import 'src/change_bg_color_directive.dart';


@Component(
  selector: 'my-app',
  template: '''
      <div changeBgColorOnClick>
          <p>{{message}}</p>
      </div>
   ''',
  directives: [ChangeBgColorDirective],
)
class AppComponent {
  var message = 'Hey there';
}
