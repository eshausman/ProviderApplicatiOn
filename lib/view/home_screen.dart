import 'package:flutter/material.dart';
import 'package:flutterapplication/controller/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controller,
              style: TextStyle(
                // color: Colors.black
              ),
              decoration: InputDecoration(
                labelText: 'Product Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  // borderSide: BorderSide(
                  //   color: Colors.pink.shade500
                  // )
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade200
                ),
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.CallVehicles(controller.text);
                    controller.clear();
                  },
                  child: Text(
                    'Add Vehicles',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade300
                ),
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.CallFruits(controller.text);
                    controller.clear();
                  },
                  child: Text('Add Fruits',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade400
                ),
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.CallVegetables(controller.text);
                    controller.clear();
                  },
                  child: Text('Add Vegatables',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade500
                ),
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.CallMachinery(controller.text);
                    controller.clear();
                  },
                  child: Text('Add Machinery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
          SizedBox(height: 20,),

          Consumer<HomeProvider>(
            builder: (context, provider, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: provider.Vehicles.length,
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(provider.Vehicles[index], style: TextStyle(color: Colors.white),),
                    ),
                  ),
                );
              });
            }
          ),

          Consumer<HomeProvider>(
            builder: (context, provider, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: provider.Fruits.length,
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade300,
                  ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(provider.Fruits[index], style: TextStyle(color: Colors.white),),
                    ),
                  ),
                );
              });
            }
          ),

          Consumer<HomeProvider>(
            builder: (context, provider, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: provider.Vegetables.length,
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                     color: Colors.pink.shade400,
                  ),
                   
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(provider.Vegetables[index], style: TextStyle(color: Colors.white),),
                    ),
                  ),
                );
              });
            }
          ),

          Consumer<HomeProvider>(
            builder: (context, provider, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: provider.Machinery.length,
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade500,
                  ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(provider.Machinery[index], style: TextStyle(color: Colors.white),),
                    ),
                  ),
                );
              });
            }
          )

        ],
      ),
    );
  }
}