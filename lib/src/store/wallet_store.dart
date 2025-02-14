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
  "4622a2b2d6af1c9844944291e5e7351a6aa24cd7b23099efac1b2fd875da31a0": {
    "id": "4622a2b2d6af1c9844944291e5e7351a6aa24cd7b23099efac1b2fd875da31a0",
    "name": "Trust Wallet",
    "description": null,
    "homepage": "https://trustwallet.com/",
    "chains": ["cosmos:cosmoshub-4"],
    "versions": ["1", "2"],
    "sdks": ["sign_v1", "sign_v2"],
    "app_type": "wallet",
    "image_id": "0528ee7e-16d1-4089-21e3-bbfb41933100",
    "image_url": {
      "sm":
          "https://registry.walletconnect.org/v2/logo/sm/0528ee7e-16d1-4089-21e3-bbfb41933100",
      "md":
          "https://registry.walletconnect.org/v2/logo/md/0528ee7e-16d1-4089-21e3-bbfb41933100",
      "lg":
          "https://registry.walletconnect.org/v2/logo/lg/0528ee7e-16d1-4089-21e3-bbfb41933100"
    },
    "app": {
      "browser": null,
      "ios": "https://apps.apple.com/app/apple-store/id1288339409",
      "android":
          "https://play.google.com/store/apps/details?id=com.wallet.crypto.trustapp",
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
    "mobile": {"native": "trust:", "universal": "https://link.trustwallet.com"},
    "desktop": {"native": null, "universal": null},
    "supported_standards": [],
    "metadata": {
      "shortName": "Trust",
      "colors": {"primary": "#3375bb", "secondary": null}
    }
  },
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
