import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCard extends StatelessWidget {

  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  final String image;
  final String link;
  final double borderRadius = 12;

  const CustomCard({Key? key, 
    required this.title, 
    required this.color, 
    required this.image,
    required this.link
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(      
        decoration: BoxDecoration(
          color: color[50],
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: Column(
          
          children: [

            //title
            const SizedBox(height: 15,),
            Text(title, style: const TextStyle(fontWeight: FontWeight.w500),),
            
            //image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 12),
              child: Image.asset(image,),
            ),

            //arrow right
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color[100],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(borderRadius),
                      bottomRight: Radius.circular(borderRadius),
                    )
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                    onPressed: () {
                      context.push(link);
                    },
                  )
                )
              ],
            ),



          ],
        ),
      ),
    );
  }
}