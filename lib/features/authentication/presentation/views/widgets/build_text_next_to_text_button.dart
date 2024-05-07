import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_button.dart';

Widget customTextNextToTextButton({
  required BuildContext context,
  String text = "",
  required String textButton,
  VoidCallback? onPressed,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 17,
              ),
        ),
        CustomTextButton(
          onPressed: () {
            onPressed?.call();
          },
          text: textButton,
          fontSize: 17,
        ),
      ],
    );
