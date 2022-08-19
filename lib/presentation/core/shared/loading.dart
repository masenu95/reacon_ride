import 'package:flutter/material.dart';




class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
     child:Container(
      height: 200,
       decoration: BoxDecoration(

           borderRadius: BorderRadius.circular(20),

         color:  Colors.black.withOpacity(0.5),
       ),



      child: const Center(
        child: Image(
            height: 80,
            width: 80,
            image:AssetImage('images/loader.gif')
        ),
      ),
    ),
    );



  }
}
