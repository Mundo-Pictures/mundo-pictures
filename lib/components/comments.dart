import 'package:flutter/material.dart';
import 'package:mundo_pictures/styles/buttons/primary-button.dart';
import 'package:mundo_pictures/components/data/comment_data.dart';
import 'package:mundo_pictures/styles/textfields/primary-textfields.dart';
import 'package:mundo_pictures/styles/colors/colors.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  CommentList allCommentList = CommentList();

  void HandleAddComment() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${allCommentList.length} Comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: 2),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "./img/Genesis_img.jpg",
                        width: 60,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                        child: PrimaryTextField(
                            hintText: "Comment...", labelText: "CHOP IT UP")),
                  ],
                ),
                PrimaryButton(
                  onPressedAction: HandleAddComment,
                  childWidget: Text(
                    "Comment",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: AppColor.primaryPurple),
                  ),
                  buttonPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Divider(
              color: AppColor.primaryOrange,
              thickness: 2,
            ),
          ),
          for (int i = 0; i < allCommentList.length; i++)
            Column(
              children: [
                Container(
                  color: AppColor.tertiaryPurple,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          allCommentList.getList()[i].name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(allCommentList.getList()[i].getDateSubmitter(),
                            style: TextStyle(color: Colors.black, fontSize: 14))
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        allCommentList.getList()[i].text,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Divider(
                    color: AppColor.primaryOrange,
                    thickness: 2,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
