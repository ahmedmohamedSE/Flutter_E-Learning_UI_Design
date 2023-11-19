import '../../model/product_model.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // final Product product;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  switch (products[index].id) {
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 5:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 6:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 7:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                    case 8:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicCourses()),
                      );
                      break;
                  }
                });
              },
              child: CategoryCard(
                product: products[index],
              ),
            ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(22.0)),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 100,
            ),
            const SizedBox(height: 8),
            Text(
              product.title,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Text(
              "${product.courses} courses",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GraphicCourses extends StatelessWidget {
  
  const GraphicCourses({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body:Center(child: Text("My ELearning App"),),
    );
  }
}
