import 'package:flutter/material.dart';

class HomePageTheme {

  box(String? name, String? imagePath, String? height, String? weight){
    return InkWell(
          child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(imagePath!),
                        backgroundColor: Colors.green.shade50
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
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 20,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
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
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
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
