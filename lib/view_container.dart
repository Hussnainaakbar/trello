import 'package:flutter/material.dart';
import 'package:trello/board_container.dart';
import 'package:trello/custom_button.dart';
import 'package:trello/custom_dialog.dart';

class ShowContent extends StatefulWidget {
  const ShowContent({Key? key}) : super(key: key);

  @override
  State<ShowContent> createState() => _ShowContentState();
}

String name = '';
String fname = '';

class _ShowContentState extends State<ShowContent> {
  ScrollController mycontroller = ScrollController();

  final List<BoardContainer> getBoards = [];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Theme(
        data: Theme.of(context).copyWith(
            scrollbarTheme: ScrollbarThemeData(
                crossAxisMargin: 0.0,
                mainAxisMargin: 20.0,
                interactive: true,
                radius: const Radius.circular(5.0),
                thumbColor: MaterialStateProperty.all(Colors.cyan[100]),
                trackColor: MaterialStateProperty.all(Colors.blue[900]))),
        child: Scrollbar(
          showTrackOnHover: true,
          isAlwaysShown: true,
          controller: mycontroller,
          child: ListView.builder(
            controller: mycontroller,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: getBoards.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == getBoards.length || getBoards.isEmpty) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      margin: const EdgeInsets.all(15.0),
                      child: CustomButton(
                        text: '+ Add a card',
                        color: Colors.grey[500]!,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => CustomDialog(
                                    heading: 'Block Title',
                                    hintText: 'Enter title',
                                    onChanged: (value) {
                                      setState(() {
                                        name = value;
                                      });
                                    },
                                    onPressed: () {
                                      setState(() {
                                        fname = name;
                                        Navigator.pop(context);
                                        getBoards.add(BoardContainer(
                                          name: fname,
                                        ));
                                      });
                                    },
                                  ));
                          // setState(() {

                          // });
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return getBoards[index];
              }
            },
          ),
        ),
      ),
    );
  }
}
