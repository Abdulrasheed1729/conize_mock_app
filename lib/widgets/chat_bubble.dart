import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.isCurrentUser, required this.text})
      : super(key: key);
  final String text;
  final bool isCurrentUser;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 80.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isCurrentUser
                ? AppColors.kSecondaryColor
                : AppColors.kSecondaryColor.withOpacity(.2),
            borderRadius: BorderRadius.only(
              topLeft: isCurrentUser
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              topRight: isCurrentUser
                  ? const Radius.circular(0)
                  : const Radius.circular(15),
              bottomLeft: const Radius.circular(15),
              bottomRight: const Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              left: 15,
              bottom: 15,
              right: 15.0,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: isCurrentUser
                    ? AppColors.kTextBoxIconColor
                    : AppColors.kPrimaryColor,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
