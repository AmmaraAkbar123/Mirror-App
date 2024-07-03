import 'package:flutter/material.dart';

class AddStoryButton extends StatelessWidget {
  const AddStoryButton({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double dynamicHeight = screenHeight * 0.16;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
  
          Container(
            width: 70,
            height: dynamicHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
          ),
          
          Positioned(
            top: 2,
            child: Container(
              width: 68,
              height: dynamicHeight * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/addstory.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: dynamicHeight / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 3), 
              ),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 15,
                child: Icon(Icons.add, color: Colors.white, size: 28),
              ),
            ),
          ),
           Positioned(
            bottom: 0,
            child: TextButton(
              onPressed: () {},
              child: Text('Add Post', style: TextStyle(color: Colors.black, fontSize: 10,),),
            ),
          ),
        ],
      ),
    );
  }
}
