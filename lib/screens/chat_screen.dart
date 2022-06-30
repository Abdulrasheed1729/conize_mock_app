import 'package:conize_mock_app/utils/colors.dart';
import 'package:conize_mock_app/widgets/widets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_left_rounded,
                      size: 30,
                    ),
                    color: AppColors.kPrimaryColor,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/kunle.jpg'),
                    radius: 20.0,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Kunle',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(height: 50),
              ListView(
                shrinkWrap: true,
                children: const [
                  ChatBubble(
                    isCurrentUser: true,
                    text:
                        'The weather is quite cold 🛸, so sorry I forgot his socks.',
                  ),
                  //! Replace that emoji bro
                  ChatBubble(
                    isCurrentUser: true,
                    text: 'Have you found an alternative ?',
                  ),
                  ChatBubble(
                    isCurrentUser: false,
                    text: 'Yes, I have.',
                  ),
                ],
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: InputTextBox(
                    label: 'Send a message',
                    suffixWidget: SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Message link.svg',
                            color: Colors.grey,
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 10),
                          SvgPicture.asset(
                            'assets/icons/Send message.svg',
                            color: AppColors.kTextBoxLabelColor,
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
