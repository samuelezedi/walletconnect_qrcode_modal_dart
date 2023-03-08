import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../modal_main_page.dart';
import '../models/wallet.dart';

/// Builder for a custom row builder
typedef ModalWalletListRowBuilder = Widget Function(
  BuildContext context,
  Wallet wallet,
  String imageUrl,
  ModalWalletListRowWidget defaultListRowWidget,
);

class ModalWalletListWidget extends StatefulWidget {
  ModalWalletListWidget({
    required this.url,
    required this.wallets,
    this.walletCallback,
    this.titleTextAlign,
    this.onWalletTap,
    this.rowBuilder,
    this.loadingWidget,
    this.inputBorderColor,
    this.showSearch = true,
    Key? key,
  }) : super(key: key);

  /// WalletConnect
  final String url;

  /// List of wallets to show and choose from
  final Future<List<Wallet>> wallets;

  /// Main wallet callback after wallet is selected
  final WalletCallback? walletCallback;

  /// Callback when row (wallet) it tapped
  final Function(Wallet wallet, String url)? onWalletTap;

  /// List title text align
  final TextAlign? titleTextAlign;

  /// Wallet row builder
  final ModalWalletListRowBuilder? rowBuilder;

  /// Loading widget when list is being populated
  final Widget? loadingWidget;

  /// Color of search field border
  final Color? inputBorderColor;

  final bool showSearch;

  @override
  State<ModalWalletListWidget> createState() => _ModalWalletListWidgetState();
}

class _ModalWalletListWidgetState extends State<ModalWalletListWidget> {
  var searched = <Wallet>[];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.wallets,
      builder: (context, AsyncSnapshot<List<Wallet>> walletData) {
        if (walletData.hasData) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: TextFormField(
                  onChanged: (value) {
                    searched.clear();
                    if (value.trim() != "") {
                      walletData.data!.map((element) {
                        if (element.name.toLowerCase().contains(
                            value.trim().toLowerCase())) {
                          searched.add(element);
                        }
                      }).toList();
                    } else {
                      searched.clear();
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: widget.inputBorderColor ?? Colors.blue,
                      ),
                    ),
                    hintText: 'Search Wallet',
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              if (searched.isEmpty)
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: walletData.data!.length,
                      itemBuilder: (context, index) {
                        final wallet = walletData.data![index];
                        final defaultRow = ModalWalletListRowWidget(
                            wallet: wallet,
                            onWalletTap: (wallet) {
                              widget.walletCallback?.call(wallet);
                              widget.onWalletTap?.call(wallet, widget.url);
                            });
                        if (widget.rowBuilder != null) {
                          return widget.rowBuilder!.call(
                            context,
                            wallet,
                            defaultRow.imageUrl,
                            defaultRow,
                          );
                        }

                        return defaultRow;
                      }),
                ),
              if (searched.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: searched.length,
                      itemBuilder: (context, index) {
                        final wallet = searched[index];
                        final defaultRow = ModalWalletListRowWidget(
                            wallet: wallet,
                            onWalletTap: (wallet) {
                              widget.walletCallback?.call(wallet);
                              widget.onWalletTap?.call(wallet, widget.url);
                            });
                        if (widget.rowBuilder != null) {
                          return widget.rowBuilder!.call(
                            context,
                            wallet,
                            defaultRow.imageUrl,
                            defaultRow,
                          );
                        }

                        return defaultRow;
                      }),
                ),
            ],
          );
        } else {
          return widget.loadingWidget ??
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.grey,
                ),
              );
        }
      },
    );
  }

  ModalWalletListWidget copyWith({
    String? url,
    Future<List<Wallet>>? wallets,
    WalletCallback? walletCallback,
    Function(Wallet wallet, String url)? onWalletTap,
    EdgeInsets? titlePadding,
    TextStyle? titleTextStyle,
    TextAlign? titleTextAlign,
    ModalWalletListRowBuilder? rowBuilder,
    Widget? loadingWidget,
    Color? inputBorderColor,
    bool? showSearch,
  }) =>
      ModalWalletListWidget(
        url: url ?? widget.url,
        wallets: wallets ?? widget.wallets,
        walletCallback: walletCallback ?? widget.walletCallback,
        onWalletTap: onWalletTap ?? widget.onWalletTap,
        inputBorderColor: inputBorderColor ?? widget.inputBorderColor,
        showSearch: showSearch ?? widget.showSearch,
        titleTextAlign: titleTextAlign ?? widget.titleTextAlign,
        rowBuilder: rowBuilder ?? widget.rowBuilder,
        loadingWidget: loadingWidget ?? widget.loadingWidget,
      );
}

class ModalWalletListRowWidget extends StatelessWidget {
  ModalWalletListRowWidget({
    required this.wallet,
    this.onWalletTap,
    this.nameWidget,
    this.namePadding,
    this.nameTextStyle,
    this.nameTextAlign,
    this.imageWidget,
    this.imageBorderRadius,
    this.imageBoxShadow,
    this.imageHeight,
    this.trailingWidget,
    Key? key,
  })  : imageUrl =
            'https://registry.walletconnect.org/logo/sm/${wallet.id}.jpeg',
        super(key: key);

  /// Wallet data for this row.
  final Wallet wallet;

  /// URL of the wallet image
  final String imageUrl;

  /// Callback when the row is selected
  final Function(Wallet wallet)? onWalletTap;

  /// Widget representing the name of the wallet
  final Widget? nameWidget;

  /// Padding around the wallet name
  final EdgeInsets? namePadding;

  /// Style of the wallet name
  final TextStyle? nameTextStyle;

  /// Alignment of the wallet name
  final TextAlign? nameTextAlign;

  /// Widget representing the wallet image
  final Widget? imageWidget;

  /// Border radius of the wallet image
  final double? imageBorderRadius;

  /// Box shadow of the wallet image
  final BoxShadow? imageBoxShadow;

  /// Wallet image height
  final double? imageHeight;

  /// Row trailing widget
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () async {
          onWalletTap?.call(wallet);
        },
        child: Row(
          children: [
            nameWidget ??
                Expanded(
                  child: Padding(
                    padding:
                        namePadding ?? const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      wallet.name,
                      style: nameTextStyle ??
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: Colors.black,
                              ),
                      textAlign: nameTextAlign,
                    ),
                  ),
                ),
            imageWidget ??
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(imageBorderRadius ?? 8),
                    boxShadow: [
                      imageBoxShadow ??
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                    ],
                  ),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    height: imageHeight ?? 30,
                  ),
                ),
            trailingWidget ??
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
          ],
        ),
      ),
    );
  }

  ModalWalletListRowWidget copyWith({
    Wallet? wallet,
    WalletCallback? onWalletTap,
    Widget? nameWidget,
    EdgeInsets? namePadding,
    TextStyle? nameTextStyle,
    TextAlign? nameTextAlign,
    Widget? imageWidget,
    double? imageBorderRadius,
    BoxShadow? imageBoxShadow,
    double? imageHeight,
    Widget? trailingWidget,
    Key? key,
  }) =>
      ModalWalletListRowWidget(
        wallet: wallet ?? this.wallet,
        onWalletTap: onWalletTap ?? this.onWalletTap,
        nameWidget: nameWidget ?? this.nameWidget,
        namePadding: namePadding ?? this.namePadding,
        nameTextStyle: nameTextStyle ?? this.nameTextStyle,
        nameTextAlign: nameTextAlign ?? this.nameTextAlign,
        imageWidget: imageWidget ?? this.imageWidget,
        imageBorderRadius: imageBorderRadius ?? this.imageBorderRadius,
        imageBoxShadow: imageBoxShadow ?? this.imageBoxShadow,
        imageHeight: imageHeight ?? this.imageHeight,
        trailingWidget: trailingWidget ?? this.trailingWidget,
        key: this.key ?? key,
      );
}
