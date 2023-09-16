import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    List<String> photo = [
      "assets/img1.jpg","assets/img2.jpg","assets/img3.jpg",
      "assets/img1.jpg","assets/img2.jpg","assets/img3.jpg",
      "assets/img1.jpg","assets/img2.jpg","assets/img3.jpg"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Gallery",style: TextStyle(
          color: Colors.grey,
          fontSize: 30,
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body:Container(

        child: GridView.builder(
            itemCount:9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,),
            itemBuilder: (context , i){
              return Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                child: Image(image: AssetImage(photo[i]), fit:BoxFit.fill ,),
              );
            }),
      )
    );
  }
}
