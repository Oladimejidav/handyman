import 'package:flutter/material.dart';

class Insurance extends StatelessWidget {
  const Insurance({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.network(
            'https://cdn.pixabay.com/photo/2016/03/31/14/37/check-mark-1292787__340.png',
            height: MediaQuery.of(context).size.height / 10 * 2,
            width: MediaQuery.of(context).size.width / 4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8 * 3,
            width: MediaQuery.of(context).size.width / 10 * 6.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Insurance Protection program',
                  softWrap: true,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 16.0,
                ),
                const Text(
                  'Upto Rs.10,000 insurance protection with every service request',
                  softWrap: true,
                  maxLines: 3,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Container(
                  height: 4.0,
                ),
                const Text(
                  'Learn more',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 12),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
