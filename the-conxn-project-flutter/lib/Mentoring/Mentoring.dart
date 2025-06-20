import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_conxn_project_flutter/Mentoring/ChatList.dart';
import 'package:the_conxn_project_flutter/Theme.dart';

class Mentoring extends StatefulWidget {
  const Mentoring({super.key});

  @override
  State<Mentoring> createState() => _MentoringState();
}

class _MentoringState extends State<Mentoring> {
  bool _isLoading = false;

  @override
  void initState() {
    _fetchMessageData();
    super.initState();
  }

  Future<void> _fetchMessageData() async {
    setState(() {
      _isLoading = true;
    });

    //TODO: Fetch the data from api
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
  }

  final List<Map<String, dynamic>> data = [
    {
      "profile_name": "Yash Fadadu",
      "last_message": "Kya hal chal, buddy got a time.",
    },
    {
      "profile_name": "Yash Fadadu",
      "last_message": "Kya hal chal, buddy got a time.",
    },
    {
      "profile_name": "Yash Fadadu",
      "last_message": "Kya hal chal, buddy got a time.",
    },
    {
      "profile_name": "Yash Fadadu",
      "last_message": "Kya hal chal, buddy got a time.",
    },

  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.scaffoldBackgroundColor,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Row(
              children: [
                Icon(Icons.arrow_back_sharp, color: theme.secondaryHeaderColor,size: 18,),
                SizedBox(width: 4,),
                Text("Mentoring", style: theme.textTheme.bodyLarge),
              ],
            ),
          ),
          SizedBox(height: 24),
          Divider(height: 1, color: theme.brightness == Brightness.dark ? darkDivider : lightDivider),
          Expanded(
            child:
                _isLoading
                    ? Center(
                      child: CircularProgressIndicator(
                        color: theme.primaryColor,
                      ),
                    )
                    : ChatList(chatData: data),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: primaryFillButton,
                onPressed: (){}, child: Text("Become a Mentee")),
          )
        ],
      ),
    );
  }
}
