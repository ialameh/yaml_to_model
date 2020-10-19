import 'package:yaml/yaml.dart';
import "package:path/path.dart" show  join, normalize;
import 'dart:convert';
import 'dart:io';

void main() async {
  // String yaml = arguments[0];
  String yaml = 'models.yaml';
  final currentDirectory = Directory.current.path.toString();
  print(currentDirectory);
  final filePath = normalize(join(currentDirectory, yaml));
  String yamlRawData = '';
  try {
    yamlRawData = new File(filePath).readAsStringSync();
  } catch (e) {
    print('you need to have properly formated models.yaml file');
    print('please refer to documentation.');
    exit(0);

  }
  var doc = loadYaml(yamlRawData);
  var jsonString = json.encode(doc);
  print(jsonString);
  // Map<String, dynamic> model = jsonDecode(jsonString);
  // Map<String, dynamic> input = jsonDecode(jsonString);
  //
  // model[node][0].removeWhere((key, value) => key == "meta");
  // model[node][0].forEach((key, value) =>
  //     model[node][0][key]
  //         .removeWhere((key, value) => key.toString().endsWith('_structure')));
  // model[node][0].forEach((key, value) {
  //   model[node][0].update(key, (value) => '');
  // });

}