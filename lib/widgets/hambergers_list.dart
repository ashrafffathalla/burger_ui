import 'package:burger_project/widgets/burger_paeg.dart';

import 'package:flutter/material.dart';

class HambergerList extends StatefulWidget
{
  final int? row;
  const HambergerList({Key? key,this.row}) : super(key: key);
  @override
  _HambergerListState createState() => _HambergerListState();
}
class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: widget.row == 2 ? 330 :  240,
      margin: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)
          {
            bool reverse =widget.row == 2 ? index.isEven : index.isOdd;
            return buildHambergerList(index,context,reverse);
          },
          separatorBuilder:(context, index) =>const SizedBox(width: 0.0,),
          itemCount: 10,
      ),
    );
  }

//Start buildHambergerList
  Widget buildHambergerList(context, index,reverse)=>Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: ()
          {

          },
          child: Container(
            height:240,
            width: 200,
            margin: EdgeInsets.only(left: index==0 ? 0 : 0, right: 10.0),
            child:  Card(
              color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children:
                  [
                     Text(
                       reverse? 'Chicken Burger' : 'Mac Burger',
                       style:const TextStyle(
                         color: Colors.white,
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,

                       ),

                     ),
                    const Spacer(),
                    Row(
                      children:
                      [
                        const Spacer(),
                        const Text(
                          '15,95 \$ CAN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            child: const Icon(Icons.add,),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              elevation: 3.0,
              margin: const EdgeInsets.all(5.0),
              shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(45),
                topLeft: Radius.circular(45),
              ),),
            ),
          ),
        ),
      ),
      Positioned(
        top: 50 ,
          child: GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const BurgerPage(),),
              );
            },
            child:  reverse ? buildBurgerOneImage() : buildBurgerTowImage(),
          ),
      ),
    ],
  );
//End buildHambergerList

//Start burger image
Widget buildBurgerOneImage()=>Container(
  height: 110.0,
  child: Image.asset('assets/images/burger3.png'),
);
Widget buildBurgerTowImage()=>Container(
  height: 120.0,
  child: Image.asset('assets/images/burger4.png'),
);
//end burger image
}
