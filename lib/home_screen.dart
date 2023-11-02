import 'package:flutter/material.dart';

void main(){}
class HomeCreen extends StatelessWidget {
  const HomeCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text(
          "App Bar",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Center(

        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(

              ),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: (dialogContext){
                    return AlertDialog(
                      title: Text("men dialogman"),
                      content: Text("meni yoqotmaguncha boshqa dialoglar bilan aloqa qilaolmaysiz"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(dialogContext).pop();
                        }, child: Text("ok"))
                      ],
                    );
                  });
                },
                child: Text("elevated button"),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined button"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("text button"),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
