import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/wallet_body.dart';

class WalletScreen extends StatefulHookConsumerWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WalletBody(),
    );
  }
}