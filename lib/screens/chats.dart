import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_whatsapp/custom/theme_provider.dart';

class ChatsScreen extends ConsumerWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = ref.watch(themeProvider);
    return Container(
      child: InkWell(
        onTap: () {
          theme.changeTheme(context);
        },
        child: Text("Chats"),
      ),
    );
  }
}
