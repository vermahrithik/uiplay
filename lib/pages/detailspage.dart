import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class DetailsPage extends StatelessWidget {
  final String index;
  DetailsPage({super.key, required this.index});

  final TextEditingController searchController = TextEditingController();
  final List<String> footSize = [
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20'
  ];
  final List<String> reviewers =['indegenous.jpg','portrait.jpg','monochrome.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffefe),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.goNamed(MyAppRouteConstants.layoutRouteName);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.85,
                  width: MediaQuery.of(context).size.width * 0.85,
                  margin:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                  decoration: BoxDecoration(
                      color: const Color(0xffffecec),
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xfff7d4d5).withOpacity(0.0),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Transform.rotate(
                          angle: -0.28,
                          child: Container(
                            height: 220,
                            width: 220,
                            decoration: BoxDecoration(
                                color: const Color(0xfff7d4d5),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(5, -15),
                          child: Transform.scale(
                            scale: 1.8,
                            child: Transform.rotate(
                              angle: 0.3,
                              child: Image.asset(
                                'images/nike.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(140, -140),
                          child: CircleAvatar(
                            backgroundColor: Color(0xfffefaff).withOpacity(0.0),
                            radius: 20,
                            child: Icon(
                              CupertinoIcons.heart_fill,
                              size: 30,
                              color: Colors.deepOrangeAccent,
                            )
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // height: 40,
                color: Colors.transparent,
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nike Air Zoom Pegasus',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff3d3b48),
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'the best of nike,all in one place',
                          style: TextStyle(
                            color: Color(0xffcacace),
                            // fontFamily: 'roboto',
                            fontSize: 16
                          )
                        ),
                        Text(
                          '\$180',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color(0xffed783a)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 32,),
                    Text(
                      'Select Size',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff3d3b48)
                      ),
                    ),
                    SizedBox(height: 22,),
                    Container(
                      height: 55,
                      width: double.maxFinite,
                      color: Colors.transparent,
                      child: ListView.builder(
                          controller: ScrollController(
                              initialScrollOffset: 0, keepScrollOffset: true),
                          itemCount: footSize.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: index==1?ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    foregroundColor: Colors.transparent,
                                    backgroundColor: const Color(0xffed783a)
                                  ),
                                  child: Text(
                                    footSize[index],
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: const Color(0xfffffefe),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )):
                              OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Color(0xffc8c8cb)),
                                    elevation: 0,
                                    foregroundColor: Colors.transparent,
                                    backgroundColor: const Color(0xfffffefe),
                                  ),
                                  child: Text(
                                    footSize[index],
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: const Color(0xffc8c8cb),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 22,),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff3d3b48)
                      ),
                    ),
                    SizedBox(height: 22,),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere aliquam sem a luctus. Vivamus tincidunt congue enim id interdum.',
                      style: TextStyle(
                          // fontFamily: 'roboto',
                          fontSize: 14,
                          color: Color(0xffc8c8cb)
                      ),
                    ),
                    SizedBox(height: 22,),
                    Text(
                      'Reviews',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff3d3b48)
                      ),
                    ),
                    SizedBox(height: 16,),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Transform.translate(offset: Offset(0, 0),child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('images/monochrome.jpg',fit: BoxFit.cover,alignment: Alignment.center,),
                            )
                        ),),
                        Transform.translate(offset: Offset(35, 0),child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('images/portrait.jpg',fit: BoxFit.cover,alignment: Alignment.center,),
                          )
                        ),),
                        Transform.translate(offset: Offset(70, 0),child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('images/indegenous.jpg',fit: BoxFit.cover,alignment: Alignment.center,),
                            )
                        ),),
                        Transform.translate(offset: Offset(105, 0),child: CircleAvatar(
                          radius: 27,
                          child: Text('12+',style: TextStyle(color: Color(0xfffffefe)),),
                          backgroundColor: Color(0xff3d3b48),
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10.0,bottom: 28),
        child: FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),backgroundColor: Color(0xffed783a),onPressed: (){},child: Icon(Icons.shopping_bag,size: 18,color: Color(0xfffffefe),),),
      ),
    );
  }
}
