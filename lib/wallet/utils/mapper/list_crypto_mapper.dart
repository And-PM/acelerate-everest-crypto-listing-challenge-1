import 'package:crypto_listing/wallet/model/crypto_view_data.dart';
import 'package:crypto_listing/wallet/repository/responses/crypto_response.dart';
import 'package:decimal/decimal.dart';

import '../../model/crypto_list_view_data.dart';

extension ListCryptoMapper on List<CryptoResponse> {
  CryptoListViewData toViewData() {
    return CryptoListViewData(
      cryptoViewDataList: map(
        (item) => CryptoViewData(
          id: item.id,
          symbol: item.symbol,
          name: item.name,
          image: item.image,
          currentPrice: Decimal.parse(item.currentPrice.toString()),
          marketCapChangePercentage24h: item.marketCapChangePercentage24h,
        ),
      ).toList(),
    );
  }
}
