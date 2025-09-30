import 'usercases/generate_reports.dart';
import 'usercases/importer_json.dart';
import 'usercases/importer_xml.dart';

void main(List<String> args) {
  GenerateReports reportJson = ImporterJson();
  reportJson.gerarRelatorio();

  GenerateReports reportXml = ImporterXml();
  reportXml.gerarRelatorio();
}
