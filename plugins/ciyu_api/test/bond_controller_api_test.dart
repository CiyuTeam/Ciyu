import 'package:test/test.dart';
import 'package:ciyu_api/ciyu_api.dart';


/// tests for BondControllerApi
void main() {
  final instance = CiyuApi().getBondControllerApi();

  group(BondControllerApi, () {
    //Future createBond(CreateBondRequest createBondRequest) async
    test('test createBond', () async {
      // TODO
    });

  });
}
