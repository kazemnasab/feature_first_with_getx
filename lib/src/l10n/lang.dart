import 'package:get/get.dart';
import 'fa_IR.dart' as fa_IR;

class Languages extends Translations {
  Map<String, Map<String, String>> _keys = {
    'fa_IR': fa_IR.keys,
  };

  @override
  Map<String, Map<String, String>> get keys => _keys;
}
