import 'package:flutter/material.dart';

class HomePageTheme {

  box(String? name, String? imagePath, String? height, String? weight, int count){//parametre olarak renk de alabilir, bakılacak.
    return InkWell(
          child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(imagePath!),
                        backgroundColor: Colors.blue.shade100
                    ),
                    Container(
                      width: 80,
                      height: 20,
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        name!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.grey.shade200,
                      child: Text(
                        '$count',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 20,
                          margin: EdgeInsets.only(top: 10),
                          color: Colors.grey.shade200,
                          child: Text(
                            '$height',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 70,
                          height: 20,
                          margin: EdgeInsets.only(top: 10),
                          color: Colors.grey.shade200,
                          child: Text(
                            '$weight',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ],
              ),
        ),
    );
  }
}

/*class TestWidget<ITEM> extends StatefulWidget {
  final List<ITEM> items;
  final Widget Function(int index, ITEM item) itemBuilder;

  const TestWidget({
    Key? key,
    required this.items,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState<ITEM>();
}

class _TestWidgetState<ITEM> extends State<TestWidget<ITEM>> {
  // -
  @override
  Widget build(BuildContext context) {
    return widget.itemBuilder(1, widget.items[1]);
  }*/
