import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4368FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF4368FF),
        title: const Text("Todo List", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        ),
      ),
      body: Column(
        children: [
          task(name: "Communication System Quiz", time: "10:00 AM", context: context),
          task(name: "OS Report", time: "11:00 AM", context: context),
          task(name: "Buy some stuff", time: "1:00 PM", context: context),
          task(name: "Go to the Gym", time: "2:00 PM", context: context),
          task(name: "Flutter Task", time: "4:00 PM", context: context),
          task(name: "Flutter Task بردو", time: "6:00 PM", context: context),
        ],
      ),
    );
  }
}

Widget task ({required String name , required String time,required BuildContext context}){
  return Container(
    margin: EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(
              fontFamily:"Raleway",
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),
            Text(time,style: const TextStyle(
              fontFamily:"Raleway",
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Colors.white,
            ), ),
          ],
        ),
        IconButton(onPressed: (){
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Delete', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                    content: const Text('Are you sure you want to delete this item?' , style: TextStyle(
                      fontSize: 25,
                    ),),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancel' , style: TextStyle(
                          fontSize: 20,
                        ),),
                        onPressed: () {
                          Navigator.of(context).pop(); // Dismiss alert dialog
                        },
                      ),
                      TextButton(
                        child: const Text('Yes',style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),),
                        onPressed: () {
                          Navigator.of(context).pop(); // Dismiss alert dialog
                        },
                      ),
                    ],
                  );
                },
              );
            }, icon: const Icon(Icons.delete_outline, size: 40, color: Colors.white,)),

      ],
    ),
  );
}