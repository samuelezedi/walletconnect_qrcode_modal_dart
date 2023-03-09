import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:walletconnect_qrcode_modal_dart/src/models/wallet.dart';

extension WCExtension on WalletConnect {
  static Wallet? _walletCred;

  Wallet? get wallet => _walletCred;

  void putSelectedWallet(Wallet wallet) {
    _walletCred = wallet;
  }

}
