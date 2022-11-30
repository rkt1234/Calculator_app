import 'package:flutter/material.dart';
class History extends StatelessWidget {
  final List arr;
  const History({super.key, required this.arr});

  @override
  Widget build(BuildContext context) {
    // print(hst.length);

    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for(int i=arr.length-1;i>0;i--)
            Padding(padding: EdgeInsets.only(right: 16,top: 8,bottom: 8),child: Align(alignment: Alignment.bottomRight,child: Text(arr[i],style: TextStyle(fontSize: 25,color: Colors.black),),),),
        ],
      ),
    );
  }
}