import 'package:business_app/presentation/providers/state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomCard extends ConsumerWidget {

  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  final String image;
  final String link;
  final double borderRadius = 12;
  final int index;

  const CustomCard({Key? key, 
    required this.title, 
    required this.color, 
    required this.image,
    required this.link,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            Text(title, style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),),
            
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
                      ref.read(currentIndexDrawerProvider.notifier).changeCurrentIndex(index);
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