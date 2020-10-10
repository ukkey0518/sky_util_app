import 'package:sky_util_app/data/constants.dart';

class Price {
  const Price.free()
      : this.payType = PayType.FREE,
        this.price = 0;

  const Price.normal(this.price) : this.payType = PayType.NORMAL_CANDLE;

  const Price.star(this.price) : this.payType = PayType.STAR_CANDLE;

  const Price.heart(this.price) : this.payType = PayType.HEART;

  final PayType payType;
  final int price;

  @override
  String toString() {
    var payTypeText;
    switch (payType) {
      case PayType.FREE:
        payTypeText = '無料';
        break;
      case PayType.NORMAL_CANDLE:
        payTypeText = '通常キャンドル';
        break;
      case PayType.STAR_CANDLE:
        payTypeText = '星キャンドル';
        break;
      case PayType.HEART:
        payTypeText = 'ハート';
        break;
    }
    return 'Price{$payTypeText${price == null || price == 0 ? '' : ':$price'}}';
  }
}
