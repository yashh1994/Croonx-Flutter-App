import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:the_conxn_project_flutter/Theme.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key, required this.chatData});

  final List<Map<String, dynamic>> chatData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimationLimiter(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final item = chatData[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 400),
            child: SlideAnimation(
              verticalOffset: 40.0,
              curve: Curves.easeOut,
              child: FadeInAnimation(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          // Circle Avatar Placeholder
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Texts
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['profile_name'],
                                  style: theme.textTheme.bodyMedium,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item['last_message'],
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4,),
                    Divider(
                      height: 1,
                      color:
                          theme.brightness == Brightness.dark
                              ? darkDivider
                              : lightDivider,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
