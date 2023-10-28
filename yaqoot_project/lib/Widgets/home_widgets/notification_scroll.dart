import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/home_widgets/button_notification.dart';

class Notificationsection extends StatelessWidget {
  const Notificationsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonNotification(
          description: 'Send free unlimited apps to\nyour friends from here',
          title: 'Gift your friends',
          icon: Icons.wallet_giftcard_rounded,
        ),
        const SizedBox(
          width: 16,
        ),
        ButtonNotification(
            description:
                'To keep your information verify\nyour email from here',
            title: 'Verify your email',
            icon: Icons.email_outlined)
      ],
    );
  }
}
