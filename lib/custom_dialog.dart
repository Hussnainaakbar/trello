import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  final String heading;
  final String hintText;
  const CustomDialog(
      {Key? key,
      this.onChanged,
      this.onPressed,
      required this.heading,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        width: 300,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                heading,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration.collapsed(
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.blue[200]!, width: 7.0),
                    //     borderRadius:
                    //         const BorderRadius.all(Radius.circular(5))),
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                    )),
                onChanged: onChanged,
                style: const TextStyle(color: Colors.black, fontSize: 28),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(100, 32),
                      backgroundColor: Colors.grey[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: onPressed,
                  child: const Text('Done',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
