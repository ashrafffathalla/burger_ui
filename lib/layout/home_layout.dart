import 'package:burger_project/widgets/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeLayout extends StatelessWidget
{
   HomeLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Deliver Me',
        ),
        leading: IconButton(
          onPressed: (){},
          icon:const Icon(Icons.menu),
        ),
        actions:
        [
          IconButton(onPressed: (){},
            icon:const Icon(Icons.shopping_cart),
          ),
        ],

      ),
      body:const Body(),
      extendBody: true,
      floatingActionButton: FloatingActionButton(

        elevation: 0.0,
        backgroundColor: Colors.orange,
        onPressed: (){},
        child:const Icon(Icons.home),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:ClipRRect(
        borderRadius:const BorderRadius.vertical(top: Radius.circular(44)),
        child: Container(
          height: size.height / 12,
          color: Colors.black38,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Colors.teal,
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                    onPressed: (){},
                    icon:const Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                SizedBox(width: size.width / 2.5,),
                IconButton(
                    onPressed: (){},
                    icon:const Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
