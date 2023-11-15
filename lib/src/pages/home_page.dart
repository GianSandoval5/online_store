import 'package:flutter/material.dart';
import 'package:online_store/src/pages/detail_shopping.dart';
import 'package:online_store/src/utils/colors/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFilter = false;

  final imagesList = [
    "assets/images/nike.png",
    "assets/images/adidas.png",
    "assets/images/puma.png",
  ];

  List<String> imagenes = [
    "assets/images/zapatilla1.png",
    "assets/images/zapatilla2.png",
    "assets/images/zapatilla3.png",
    "assets/images/zapatilla4.png",
    "assets/images/zapatilla5.png",
    "assets/images/zapatilla6.png",
    "assets/images/zapatilla7.png",
    "assets/images/zapatilla8.png",
    "assets/images/zapatilla9.png",
  ];

  List<String> marca = [
    "Nike",
    "Adidas",
    "Puma",
    "Nike",
    "Adidas",
    "Puma",
    "Nike",
    "Adidas",
    "Puma",
  ];

  List<String> titles = [
    "Human race",
    "Joyraide",
    "Zoom Pegasus",
    "Street Balt",
    "Air Max",
    "Superstar",
    "Air Force",
    "NMD",
    "Air Max 270",
  ];

  List<String> prices = [
    "S/ 250.00",
    "S/ 300.00",
    "S/ 350.00",
    "S/ 400.00",
    "S/ 450.00",
    "S/ 500.00",
    "S/ 550.00",
    "S/ 600.00",
    "S/ 650.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.headerColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/images/profile.png',
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: AppColors.oscureColor,
                    ),
                    iconSize: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Catálogo",
                        style: TextStyle(
                            color: AppColors.oscureColor,
                            fontSize: 30,
                            fontFamily: "CB"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.filter_list),
                                SizedBox(width: 10),
                                Text(
                                  "Filtros",
                                  style: TextStyle(
                                    fontFamily: "CB",
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 60,
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 5,
                                color: isFilter
                                    ? AppColors.orangeColor
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isFilter = !isFilter;
                                    });
                                  },
                                  icon: Image.asset(
                                    imagesList[index],
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: imagenes.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 280,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_border,
                                          color: AppColors.oscureColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.add_shopping_cart_rounded,
                                          color: AppColors.oscureColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Hero(
                                  tag: imagenes[index],
                                  child: Image.asset(
                                    imagenes[index],
                                    fit: BoxFit.cover,
                                    height: 180,
                                  ),
                                ),
                                Text(
                                  marca[index],
                                  style: const TextStyle(
                                    fontFamily: "CB",
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  titles[index],
                                  style: const TextStyle(
                                    fontFamily: "CB",
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  prices[index],
                                  style: const TextStyle(
                                    fontFamily: "CB",
                                    fontSize: 20,
                                    color: AppColors.orangeColor,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  image: imagenes[index],
                                  title: titles[index],
                                  price: prices[index],
                                  marca: marca[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
