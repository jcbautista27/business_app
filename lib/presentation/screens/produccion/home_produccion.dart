import 'package:business_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeProduccion extends StatefulWidget {

  static const String name = 'home_produccion';

  const HomeProduccion({Key? key}) : super(key: key);

  @override
  State<HomeProduccion> createState() => _HomeProduccionState();
}

class _HomeProduccionState extends State<HomeProduccion> {

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text("PARTE DE PRODUCCIÓN", style: textStyle.titleMedium,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text("Ingreso de produccion diaria", style: textStyle.bodyMedium,),
          ),
          Stepper(
            connectorColor: const MaterialStatePropertyAll(Colors.orange),
            steps: getSteps(),
            currentStep: currentStep,
            onStepTapped: (value) {
              setState(() {
                currentStep = value;
              });
            },
            onStepContinue: () {
              final isLastStep = currentStep == getSteps().length -1;
              if (!isLastStep){
                setState(() {
                  currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              if (currentStep == 0){
                return;
              }
              setState(() {
                currentStep -= 1;
              });
            },
          ),
        ],
      )
    );
  }

  List<Step> getSteps() => [
    Step(
      title: const Text("Selecciona una OT"), 
      state: currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 0,
      content: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              const CustomTextWidget(
                icon: Icons.numbers_outlined, 
                placeholder: 'Número de OT', 
                keyboardType: TextInputType.number, 
                isPassword: false
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {

                  },
                ),
              )
            ]
          ),
        ],
      )
    ),

    Step(
      title: const Text("Cantidad"), 
      state: currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 1,
      content: const Column(
        children: [
          CustomTextWidget(
            icon: Icons.numbers_outlined, 
            placeholder: 'Cantidad', 
            keyboardType: TextInputType.number, 
            isPassword: false
          ),
        ],
      )
    ),

    Step(
      title: const Text("Fecha"), 
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 2,
      content: const Column(
        children: [
          CustomTextWidget(
            icon: Icons.numbers_outlined, 
            placeholder: 'Cantidad', 
            keyboardType: TextInputType.datetime, 
            isPassword: false
          ),
        ],
      )
    ),
  ];
}