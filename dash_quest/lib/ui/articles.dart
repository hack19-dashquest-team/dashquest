import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
//import 'package';


class Articles extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0),
        child: Text("Learning Material"),),
        // Expanded(
        //  child: WebView(
     
        //     javascriptMode: JavascriptMode.unrestricted,
        //     initialUrl: 'https://www.youtube.com/channel/UCDCFIqDZ1QUqivxVFQDxS0w',
            
        //   ),),
        
         SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: const Text('Complete'),
              onPressed: () {
//Route to Survey page
//Navigator.push(context, MaterialPageRoute(builder: (context) => Survey()),);
              },
            )),
      ],
    );
  }
}
