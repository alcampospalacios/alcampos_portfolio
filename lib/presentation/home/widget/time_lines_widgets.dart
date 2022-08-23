import 'package:flutter/material.dart';

class TimeLinesWidget extends StatelessWidget {
  const TimeLinesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 5),
              const Text('CESOL: 3 Years',
                  style: TextStyle(
                    fontFamily: 'NotoSerif',
                    color: Colors.black87,
                    fontSize: 14,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Container(
              width: 3,
              height: 20,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(
                    left: BorderSide(color: Colors.black26, width: 0.7),
                  )),
            ),
          ),
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 5),
              const Text('FORTES: 1 Year',
                  style: TextStyle(
                    fontFamily: 'NotoSerif',
                    color: Colors.black87,
                    fontSize: 14,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Container(
              width: 3,
              height: 20,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(
                    left: BorderSide(color: Colors.black26, width: 0.7),
                  )),
            ),
          ),
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 5),
              const Text('FREELANCER: 1 Year',
                  style: TextStyle(
                    fontFamily: 'NotoSerif',
                    color: Colors.black87,
                    fontSize: 14,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
