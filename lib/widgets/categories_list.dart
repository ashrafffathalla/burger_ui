import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);
  @override
  State<CategoriesList> createState() => _CategoriesListState();
}
class _CategoriesListState extends State<CategoriesList>
{
  int currentIndex = 0;
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:const EdgeInsets.only(top: 10.0),
      height: 100,
      child: ListView.separated(
        physics:const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildListCategories(context,index),
          separatorBuilder:(context, index) =>const SizedBox(width: 0,),
          itemCount: 8,
      ),
    );
  }
  Widget buildListCategories(context, index)=>Stack(
    children:
    [
      Column(
        children:
        [
          Container(
            width: 90.0,
            height: 90.0,
            margin: EdgeInsets.only(left: index==0 ? 10 : 0, right: 10.0),
            child: GestureDetector(
              onTap: ()
              {
                setState(()
                {
                  currentIndex = index;
                });
              },
              child: Card(
                color: index == currentIndex ? Colors.black.withOpacity(0.7): Colors.white,
                child: Icon(
                    Icons.fastfood,
                  color:index == currentIndex? Colors.white:  Colors.black.withOpacity(0.7),
                ),

                elevation: 3.0,
                margin:const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          )
        ],
      ),
      Positioned(
        bottom: 0.0,
          child:Container(
            margin: EdgeInsets.only(left: index==0 ? 20: 0, right: 20.0),
            width: 90.0,
            child: Row(
              children:const
              [
                Spacer(),
                Text('Burger'),
                Spacer(),
              ],
            ),
          ) ,
      ),
    ],
  );
}
