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
  "1ae92b26df02f0abca6304df07debccd18262fdf5fe82daa81593582dac9a369": {
    "id": "1ae92b26df02f0abca6304df07debccd18262fdf5fe82daa81593582dac9a369",
    "name": "Rainbow",
    "description": "Rainbow is a fun, simple, and secure way to get started with crypto and explore the new world of Ethereum",
    "homepage": "https://rainbow.me/",
    "chains": [
      "eip155:1",
      "eip155:10",
      "eip155:137",
      "eip155:42161",
      "eip155:56"
    ],
    "versions": [
      "1",
      "2"
    ],
    "sdks": [
      "sign_v1",
      "sign_v2"
    ],
    "app_type": "wallet",
    "image_id": "7a33d7f1-3d12-4b5c-f3ee-5cd83cb1b500",
    "image_url": {
      "sm": "https://registry.walletconnect.org/v2/logo/sm/7a33d7f1-3d12-4b5c-f3ee-5cd83cb1b500",
      "md": "https://registry.walletconnect.org/v2/logo/md/7a33d7f1-3d12-4b5c-f3ee-5cd83cb1b500",
      "lg": "https://registry.walletconnect.org/v2/logo/lg/7a33d7f1-3d12-4b5c-f3ee-5cd83cb1b500"
    },
    "app": {
      "browser": null,
      "ios": "https://apps.apple.com/app/rainbow-ethereum-wallet/id1457119021",
      "android": "https://play.google.com/store/apps/details?id=me.rainbow",
      "mac": null,
      "windows": null,
      "linux": null,
      "chrome": "https://rainbow.me/extension",
      "firefox": null,
      "safari": null,
      "edge": null,
      "opera": null
    },
    "injected": [
      {
        "namespace": "eip155",
        "injected_id": "isRainbow"
      }
    ],
    "mobile": {
      "native": "rainbow:",
      "universal": "https://rnbwapp.com"
    },
    "desktop": {
      "native": "",
      "universal": null
    },
    "supported_standards": [
      {
        "id": "e21e1165-74e8-4e6a-9901-7ae2cb3951ff",
        "url": "https://eips.ethereum.org/EIPS/eip-3326",
        "title": "Wallet Switch Ethereum Chain RPC Method (`wallet_switchEthereumChain`)",
        "standard_id": 3326,
        "standard_prefix": "EIP"
      },
      {
        "id": "e21e1165-74e8-4e6a-9901-7ae2cb3951ff",
        "url": "https://eips.ethereum.org/EIPS/eip-3326",
        "title": "Wallet Switch Ethereum Chain RPC Method (`wallet_switchEthereumChain`)",
        "standard_id": 3326,
        "standard_prefix": "EIP"
      },
      {
        "id": "e21e1165-74e8-4e6a-9901-7ae2cb3951ff",
        "url": "https://eips.ethereum.org/EIPS/eip-3326",
        "title": "Wallet Switch Ethereum Chain RPC Method (`wallet_switchEthereumChain`)",
        "standard_id": 3326,
        "standard_prefix": "EIP"
      },
      {
        "id": "e21e1165-74e8-4e6a-9901-7ae2cb3951ff",
        "url": "https://eips.ethereum.org/EIPS/eip-3326",
        "title": "Wallet Switch Ethereum Chain RPC Method (`wallet_switchEthereumChain`)",
        "standard_id": 3326,
        "standard_prefix": "EIP"
      },
      {
        "id": "e21e1165-74e8-4e6a-9901-7ae2cb3951ff",
        "url": "https://eips.ethereum.org/EIPS/eip-3326",
        "title": "Wallet Switch Ethereum Chain RPC Method (`wallet_switchEthereumChain`)",
        "standard_id": 3326,
        "standard_prefix": "EIP"
      }
    ],
    "metadata": {
      "shortName": "Rainbow",
      "colors": {
        "primary": "#001e59",
        "secondary": null
      }
    },
    "updatedAt": "2021-07-30T17:48:12+00:00"
  },
  "4622a2b2d6af1c9844944291e5e7351a6aa24cd7b23099efac1b2fd875da31a0": {
    "id": "4622a2b2d6af1c9844944291e5e7351a6aa24cd7b23099efac1b2fd875da31a0",
    "name": "Trust Wallet",
    "description": null,
    "homepage": "https://trustwallet.com/",
    "chains": [
      "cosmos:cosmoshub-4",
      "eip155:1"
    ],
    "versions": [
      "1",
      "2"
    ],
    "sdks": [
      "sign_v1",
      "sign_v2"
    ],
    "app_type": "wallet",
    "image_id": "0528ee7e-16d1-4089-21e3-bbfb41933100",
    "image_url": {
      "sm": "https://registry.walletconnect.org/v2/logo/sm/0528ee7e-16d1-4089-21e3-bbfb41933100",
      "md": "https://registry.walletconnect.org/v2/logo/md/0528ee7e-16d1-4089-21e3-bbfb41933100",
      "lg": "https://registry.walletconnect.org/v2/logo/lg/0528ee7e-16d1-4089-21e3-bbfb41933100"
    },
    "app": {
      "browser": null,
      "ios": "https://apps.apple.com/app/apple-store/id1288339409",
      "android": "https://play.google.com/store/apps/details?id=com.wallet.crypto.trustapp",
      "mac": null,
      "windows": null,
      "linux": null,
      "chrome": "https://chrome.google.com/webstore/detail/trust-wallet/egjidjbpglichdcondbcbdnbeeppgdph",
      "firefox": null,
      "safari": null,
      "edge": null,
      "opera": null
    },
    "injected": [
      {
        "namespace": "eip155",
        "injected_id": "isTrust"
      },
      {
        "namespace": "eip155",
        "injected_id": "isTrustWallet"
      }
    ],
    "mobile": {
      "native": "trust:",
      "universal": "https://link.trustwallet.com"
    },
    "desktop": {
      "native": "",
      "universal": null
    },
    "supported_standards": [],
    "metadata": {
      "shortName": "Trust",
      "colors": {
        "primary": "#3375bb",
        "secondary": null
      }
    },
    "updatedAt": "2021-07-30T17:48:12+00:00"
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
    },
    "c03dfee351b6fcc421b4494ea33b9d4b92a984f87aa76d1663bb28705e95034a": {
      "id": "c03dfee351b6fcc421b4494ea33b9d4b92a984f87aa76d1663bb28705e95034a",
      "name": "Uniswap Wallet",
      "description": "Built by the most trusted team in DeFi, Uniswap Wallet allows you to maintain full custody and control of your assets. ",
      "homepage": "https://uniswap.org",
      "chains": [
        "eip155:1",
        "eip155:10",
        "eip155:137",
        "eip155:42161"
      ],
      "versions": [
        "1"
      ],
      "sdks": [
        "sign_v1"
      ],
      "app_type": "wallet",
      "image_id": "bff9cf1f-df19-42ce-f62a-87f04df13c00",
      "image_url": {
        "sm": "https://registry.walletconnect.org/v2/logo/sm/bff9cf1f-df19-42ce-f62a-87f04df13c00",
        "md": "https://registry.walletconnect.org/v2/logo/md/bff9cf1f-df19-42ce-f62a-87f04df13c00",
        "lg": "https://registry.walletconnect.org/v2/logo/lg/bff9cf1f-df19-42ce-f62a-87f04df13c00"
      },
      "app": {
        "browser": null,
        "ios": "https://apps.apple.com/us/app/uniswap-wallet-defi-nfts/id6443944476",
        "android": null,
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
      "mobile": {
        "native": "",
        "universal": "https://uniswap.org/app"
      },
      "desktop": {
        "native": "",
        "universal": null
      },
      "supported_standards": [],
      "metadata": {
        "shortName": "Uniswap",
        "colors": {
          "primary": "#F42BD2",
          "secondary": "#FAD8F8"
        }
      },
      "updatedAt": "2023-03-03T13:00:30+00:00"
    },
    "ccb714920401f7d008dbe11281ae70e3a4bfb621763b187b9e4a3ce1ab8faa3b": {
      "id": "ccb714920401f7d008dbe11281ae70e3a4bfb621763b187b9e4a3ce1ab8faa3b",
      "name": "BitPay",
      "description": "",
      "homepage": "https://bitpay.com",
      "chains": [
        "eip155:1"
      ],
      "versions": [
        "1"
      ],
      "sdks": [
        "sign_v1"
      ],
      "app_type": "wallet",
      "image_id": "97d4429f-eaf0-4302-87f5-9d26d46fe700",
      "image_url": {
        "sm": "https://registry.walletconnect.org/v2/logo/sm/97d4429f-eaf0-4302-87f5-9d26d46fe700",
        "md": "https://registry.walletconnect.org/v2/logo/md/97d4429f-eaf0-4302-87f5-9d26d46fe700",
        "lg": "https://registry.walletconnect.org/v2/logo/lg/97d4429f-eaf0-4302-87f5-9d26d46fe700"
      },
      "app": {
        "browser": "",
        "ios": "https://apps.apple.com/us/app/bitpay-buy-crypto/id1149581638",
        "android": "https://play.google.com/store/apps/details?id=com.bitpay.wallet",
        "mac": "",
        "windows": "",
        "linux": "",
        "chrome": null,
        "firefox": null,
        "safari": null,
        "edge": null,
        "opera": null
      },
      "injected": null,
      "mobile": {
        "native": "bitpay:",
        "universal": "https://link.bitpay.com/wallet"
      },
      "desktop": {
        "native": "",
        "universal": ""
      },
      "supported_standards": [],
      "metadata": {
        "shortName": "BitPay",
        "colors": {
          "primary": "#1a3c8b",
          "secondary": ""
        }
      },
      "updatedAt": "2021-07-30T17:48:12.565+00:00"
    }
  }
};
