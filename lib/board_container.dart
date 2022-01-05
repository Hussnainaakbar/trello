import 'package:flutter/material.dart';
import 'package:trello/custom_button.dart';
import 'package:trello/custom_dialog.dart';
import 'package:trello/text_container.dart';

// final List<BoardContainer> board = [];

class BoardContainer extends StatefulWidget {
  BoardContainer({required this.name, Key? key}) : super(key: key);
  String name;
  @override
  State<BoardContainer> createState() => _BoardContainerState();
}

String textContent = '';
String text = '';
List<String> contents = [];
ScrollController controller = ScrollController();

class _BoardContainerState extends State<BoardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.cyan[100],
      ),
      margin: const EdgeInsets.all(15.0),
      height: 400,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(fontSize: 25, color: Colors.black),
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
            Expanded(
                child: Scrollbar(
              controller: controller,
              child: ListView.builder(
                  controller: controller,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemCount: contents.length,
                  itemBuilder: (context, index) {
                    if (contents.isNotEmpty || index >= contents.length) {
                      return MyText(textContent: contents[index]);
                    } else {
                      return const SizedBox.shrink();
                    }
                  }),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  text: '+ add Text',
                  color: Colors.cyan[100]!,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => CustomDialog(
                              heading: 'Add Text',
                              hintText: 'Enter text',
                              onChanged: (val) {
                                setState(() {
                                  text = val;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  textContent = text;
                                  contents.add(textContent);
                                });

                                Navigator.pop(context);
                              },
                            ));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// final boards = [BoardContainer()];

