import 'package:business_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HeaderWidget(),
                  _Form(),
                  const Text('¿Olvidaste tu contraseña?', style: TextStyle(fontWeight: FontWeight.w200),)
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(
            icon: Icons.person_rounded, 
            placeholder: 'Usuario', 
            keyboardType: TextInputType.text, 
            isPassword: false
          ),

          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              const CustomTextWidget(
                icon: Icons.password_outlined, 
                placeholder: 'Contraseña', 
                keyboardType: TextInputType.text, 
                isPassword: true
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: IconButton(
                  icon: const Icon(Icons.remove_red_eye_rounded),
                  onPressed: () {

                  },
                ),
              )
            ],
          ),

          CustomBotonWidget(
            text: 'Iniciar sesión', 
            onPressed: (){
              context.pushReplacement('/home');
              
            }
          )
        ],
      ),
    );
  }
}