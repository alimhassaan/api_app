import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({super.key, required this.order, required this.taxes, required this.fees, required this.total});
  final String order, taxes, fees, total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkoutWidget(title: 'Order', value: order),
        Gap(10),
        checkoutWidget(title: 'Taxes', value: taxes),
        Gap(10),
        checkoutWidget(title: 'Delivery fees', value: fees),
        Gap(10),
        Divider(),
        Gap(10),
        checkoutWidget(title: 'Total', value: total, isBold: true),
        Gap(10),
        checkoutWidget(
          title: 'Estimated Delivery Time:',
          value: '15 - 30 mins',
          isBold: true,
          isSmall: true,
        ),
      ],
    );
  }
}

Widget checkoutWidget({
  required String title,
  required String value,
  bool isBold = false,
  bool isSmall = false,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: title,
        color: isBold ? Colors.black : Colors.grey.shade600,
        size: isSmall ? 13 : 15,
        weight: isBold ? FontWeight.bold : FontWeight.w400,
      ),
      CustomText(
        text: '$value \$',
        color: isBold ? Colors.black : Colors.grey.shade600,
        size: isSmall ? 13 : 15,
        weight: isBold ? FontWeight.bold : FontWeight.w400,
      ),
    ],
  );
}
