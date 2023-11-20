import 'package:business_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(Icons.history_outlined, size: 30,), 
              onPressed: () {  
                context.push('/produccion/historial');
              },

            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                //print("hola");
                final isLastStep = currentStep == getSteps().length -1;
                if (!isLastStep){
                  setState(() {
                    currentStep += 1;
                  });
                }else{
                  //guardar la data
                  // ignore: avoid_print
                  print("guardar");
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
              controlsBuilder: (context, details) {
                final isLastStep = currentStep == getSteps().length -1;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(Colors.white),
                            backgroundColor: MaterialStatePropertyAll(Colors.orange)
                          ),
                          onPressed: () => details.onStepContinue?.call(),
                          child: isLastStep? const Text("Guardar") :const Text("Siguiente"),
                        ),
                      ),
      
                      const SizedBox(width: 10,),
      
                      currentStep == 0? const SizedBox() :Expanded(
                        child: ElevatedButton(
                          onPressed: currentStep == 0? null :() => details.onStepCancel?.call(),
                          child: const Text("Atrás"),
                        ),
                      )
                    ],
                  ),
                );
              },
              
            ),
          ],
        ),
      )
    );
  }

  List<Step> getSteps() => [
    Step(
      title: const Text("Selecciona una OT"), 
      state: currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 0,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    showSearch(context: context, delegate: CustomSearch());
                  },
                ),
              )
            ]
          ),

          const Text("Complejo Agroindustrial Beta S.A."),
          const Text("Pallet de madera 1.20 x 1.00mt 7/5 cTaco"),
          const Row(
            children: [
              Text("Cantidad: 500"),
              Spacer(),
              Text("Avance: 350")
            ],
          )

        ],
      )
    ),

    Step(
      title: const Text("Fabricacíon"), 
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
          CustomTextWidget(
            icon: Icons.date_range_outlined, 
            placeholder: 'Fecha', 
            keyboardType: TextInputType.datetime, 
            isPassword: false
          ),
        ],
      )
    ),

    Step(
      title: const Text("Almacén"), 
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 2,
      content: const Column(
        children: [
          CustomTextWidget(
            icon: Icons.file_copy_outlined, 
            placeholder: 'Almacén', 
            keyboardType: TextInputType.text, 
            isPassword: false
          ),
          CustomTextWidget(
            icon: Icons.file_copy_outlined, 
            placeholder: 'Tipo de Movimiento', 
            keyboardType: TextInputType.datetime, 
            isPassword: false
          ),
        ],
      )
    ),

     Step(
      title: const Text("Resumen"), 
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 2,
      content: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Complejo Agroindustrial Beta S.A."),
          Text("Pallet de madera 1.20 x 1.00mt 7/5 cTaco"),
          Text("Almacen Producto terminado"),
          Text("Ingreso por producción"),
          Text("29/02/2024"),
          Text("Cantidad: 450"),
          
        ],
      )
    ),
  ];
}

class CustomSearch extends SearchDelegate{

  List<String> allData = [
    'OT 2550 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2551 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2552 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2553 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2554 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2555 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2556 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2557 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2558 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2559 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'OT 2560 - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500', 
    'Hola - Agricola Don Ricardo - Pallet de madera 1.00 x 1.20 7/5 cTaco - 1500' 
  ];

  @override
  String get searchFieldLabel => "Buscar";

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        }, 
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    List<String> matchQuery = [];
    for (var item in allData) {
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          leading: const Icon(Icons.pallet),
          dense: true,
          
          onTap: () {
            
          },
        );
      },
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    
    List<String> matchQuery = [];
    for (var item in allData) {
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          leading: const Icon(Icons.pallet),
          dense: true,
          
          onTap: () {
            
          },
        );
      },
    );
  }
}