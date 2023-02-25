import '../gateway.dart';
import '../payment_gateways/pag_facil.dart';

class PagFacilAdapter extends PagFacil implements Gateway {
  PagFacilAdapter() : super();

  @override
  String getName() {
    return 'PagFacil';
  }
}
