import 'dart:io';

class IpService {
  static Future<String> obterIpLocal() async {
    final interfaces = await NetworkInterface.list();

    for (final interface in interfaces) {
      for (final endereco in interface.addresses) {
        if (endereco.type == InternetAddressType.IPv4 && !endereco.isLoopback) {
          return endereco.address;
        }
      }
    }

    return "IP não encontrado";
  }
}
