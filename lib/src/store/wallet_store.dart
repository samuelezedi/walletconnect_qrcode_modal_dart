import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/wallet.dart';

class WalletStore {
  const WalletStore();

  Future<List<Wallet>> load() async {
    final walletData = json;

    return walletData.entries
        .map<Wallet>((data) => Wallet.fromJson(data.value))
        .toList();
  }
}

final json = <String, dynamic>{
  "c57ca95b47569778a828d19178114f4db188b89b763c899ba0be274e97267d96": {
    "id": "c57ca95b47569778a828d19178114f4db188b89b763c899ba0be274e97267d96",
    "name": "MetaMask",
    "description":
        "Whether you are an experienced user or brand new to blockchain, MetaMask helps you connect to the decentralized web: a new internet.",
    "homepage": "https://metamask.io/",
    "chains": [],
    "versions": ["1"],
    "sdks": ["sign_v1"],
    "app_type": "wallet",
    "image_id": "5195e9db-94d8-4579-6f11-ef553be95100",
    "image_url": {
      "sm":
          "https://registry.walletconnect.org/v2/logo/sm/5195e9db-94d8-4579-6f11-ef553be95100",
      "md":
          "https://registry.walletconnect.org/v2/logo/md/5195e9db-94d8-4579-6f11-ef553be95100",
      "lg":
          "https://registry.walletconnect.org/v2/logo/lg/5195e9db-94d8-4579-6f11-ef553be95100"
    },
    "app": {
      "browser": null,
      "ios": "https://apps.apple.com/us/app/metamask/id1438144202",
      "android": "https://play.google.com/store/apps/details?id=io.metamask",
      "mac": null,
      "windows": null,
      "linux": null,
      "chrome": null,
      "firefox": null,
      "safari": null,
      "edge": null,
      "opera": null
    },
    "injected": null,
    "mobile": {"native": "metamask:", "universal": "https://metamask.app.link"},
    "desktop": {"native": null, "universal": null},
    "supported_standards": [],
    "metadata": {
      "shortName": "MetaMask",
      "colors": {"primary": "#ffffff", "secondary": null}
    }
  }
};
