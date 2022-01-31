import 'package:burger_project/widgets/categories_list.dart';
import 'package:burger_project/widgets/hambergers_list.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        children:
        [
          Container(
            child: Stack(
              children: [
                Container(
                  height: size.height / 5 ,
                  decoration:const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(45),
                    ),
                    boxShadow:
                    [
                      BoxShadow(
                        blurRadius:2,
                        //offset: Offset(0,0),
                        color: Colors.teal,
                        //TODO
                      ),
                    ],
                  ),

                  child:Column(
                    children:
                    [
                      const SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children:
                          [
                             const CircleAvatar(
                              backgroundColor: Colors.white70,
                               radius: 30,
                               child: CircleAvatar(
                                 backgroundImage: AssetImage('assets/images/ashraf.png',),
                                 radius: 25.0,
                               ),
                            ),
                             const SizedBox(width: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                const Text('Ashraf Fathalla',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                ),
                                ),
                                Container(
                                  padding:const EdgeInsets.all(4.0),
                                  child:const Text('Vip Member',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black54,
                                  ),
                                ),

                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '156 \$ CAN',
                            style:TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0
                            ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child:Container(
                    height: 35.0,
                    width: size.width,
                    child: Card(
                      elevation: 0,
                      margin:const EdgeInsets.symmetric(horizontal: 40),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'What dose your mind...',
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.only(left: 10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CategoriesList(),
          const HambergerList(row: 1,),
          const HambergerList(row: 2,),

        ],
      ),
    );
  }
}
