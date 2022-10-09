import 'package:flutter/material.dart';
import 'package:olympic_sol/food.dart';

var foodList = [
  Food(
      name: 'ข้าวมันไก่',
      price: 40,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ข้าวหมูกรอบ',
      price: 45,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ผัดไทย',
      price: 50,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ผัดซีอิ๊ว',
      price: 30,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ข้าวขาหมู',
      price: 40,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ข้าวหน้าเป็ด',
      price: 60,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ส้มตำ',
      price: 40,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ข้าวผัด',
      price: 30,
      imageUrl: 'assets/images/thfood6.jpg',),
  Food(
      name: 'ข้าวกะเพราไก่ไข่ดาว',
      price: 30,
      imageUrl: 'assets/images/thfood6.jpg',),
];

class FoodLisPage extends StatefulWidget {
  const FoodLisPage({Key? key}) : super(key: key);

  @override
  State<FoodLisPage> createState() => _FoodLisPageState();
}

class _FoodLisPageState extends State<FoodLisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int i) {
            var food = foodList[i];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    /*Icon(
                      Icons.fastfood,
                      size: 50.0,
                    ),*/
                    /*Image.network(
                      food.imageUrl,
                      height: 50.0,
                      width: 40.0,
                    ),*/
                    Image.asset('${food.imageUrl}'),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text('${food.price} บาท'),
                        ],
                      ),
                    ),
                    Text('${food.orderCount}'),
                  ],
                ),
              ),
            );
          },
          itemCount: foodList.length),
    );
  }
}
