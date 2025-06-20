import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_conxn_project_flutter/Mentoring/Mentoring.dart';
import 'package:the_conxn_project_flutter/Theme.dart';

void openBottomDrawer(BuildContext context, ThemeData theme) {
  showModalBottomSheet(
    isDismissible: true,
    context: context,
    isScrollControlled: true, // allows dynamic height
    backgroundColor: theme.dialogBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => const _MentorMenteeAskingDialogContent(),
  );
}

class _MentorMenteeAskingDialogContent extends StatefulWidget {
  const _MentorMenteeAskingDialogContent({Key? key}) : super(key: key);

  @override
  State<_MentorMenteeAskingDialogContent> createState() =>
      _MentorMenteeAskingDialogContentState();
}

class _MentorMenteeAskingDialogContentState
    extends State<_MentorMenteeAskingDialogContent> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(
        top: 32,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Title",
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id. Praesent lorem orci, mattis non efficitur id, ultricies vel nibh. Sed volutpat lacus vitae gravida viverra. Fusce vel tempor elit. Proin tempus.",
                style: theme.textTheme.bodySmall,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    activeColor: theme.primaryColor,
                    value: checkBox,
                    onChanged: (val) {
                      setState(() {
                        checkBox = val!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      "I understand and agree",
                      style: theme.textTheme.bodySmall,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                child:  ElevatedButton(
                    style: primaryFillButton,
                    onPressed: (){
                      Navigator.pop(context); // Close the bottom drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Mentoring()),);
                    }, child: Text(
                  "Join the Mentor Program",
                  style: smallPrimaryTextStyle,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
