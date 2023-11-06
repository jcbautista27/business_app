
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../providers/providers.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: size.width * 0.12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Good Morning ', style: textStyle.titleMedium?.copyWith(fontWeight: FontWeight.w300),),
                  Text('@jcbautista', style: textStyle.titleSmall,),
                ],
              ),

              const Spacer(),

              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.account_circle_rounded, color: colors.primary, size: 40,)
              ),
            ],
          )
        ),
      )
    );
  }
}