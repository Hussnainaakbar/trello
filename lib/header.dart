import 'package:flutter/material.dart';
import 'package:trello/custom_dialog.dart';

class Toper extends StatefulWidget {
  const Toper({
    Key? key,
  }) : super(key: key);

  @override
  State<Toper> createState() => _ToperState();
}

class _ToperState extends State<Toper> {
  String text = '';
  String workTitle = 'work';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.cyan[100]!,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60.0, 5.0, 10.0, 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.desktop_windows_outlined,
              size: 40,
              color: Colors.blue[900],
            ),
            const SizedBox(width: 20),
            Text(
              workTitle,
              style: const TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: const Size(135, 32),
                        backgroundColor: Colors.grey[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                heading: 'Change Title',
                                hintText: 'Enter title',
                                onChanged: (value) {
                                  setState(() {
                                    text = value;
                                  });
                                },
                                onPressed: () => setState(() {
                                  workTitle = text;
                                  Navigator.pop(context);
                                }),
                              ));
                    },
                    child: const Text('Change title',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ))),
                const SizedBox(width: 7.0),
                TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: const Size(100, 32),
                        backgroundColor: Colors.grey[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: const Text('Delete',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
