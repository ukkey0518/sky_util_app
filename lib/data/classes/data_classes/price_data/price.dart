import 'package:flutter/material.dart';
import 'package:sky_util_app/data/constants.dart';

class Price {
  const Price({
    @required this.payType,
    @required this.price,
  });

  const Price.free()
      : this.payType = PayType.FREE,
        this.price = 0;

  const Price.normal(this.price) : this.payType = PayType.NORMAL_CANDLE;

  const Price.star(this.price) : this.payType = PayType.STAR_CANDLE;

  const Price.heart(this.price) : this.payType = PayType.HEART;

  final PayType payType;
  final int price;
}
