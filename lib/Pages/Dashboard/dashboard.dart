import 'package:fashionshop/Pages/Dashboard/productCard.dart';
import 'package:fashionshop/Pages/Models/productmodel.dart';
import 'package:fashionshop/Pages/toparea.dart';
import 'package:fashionshop/Utils/constant.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _label = [
    'All',
    'Nike',
    'Adidas',
    'NewBallance',
    'UnderArmur',
    'Puma',
    'Trending'
  ];
  List<ProductModel> _filteredSuggestions = [];
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    _filteredSuggestions.addAll(products);
  }

  void _filterSuggestions(String query) {
    setState(() {
      _filteredSuggestions = products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopArea(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                // color: fillColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: white.withOpacity(0.3), width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: fillColor6,
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: backgroundColor,
                    offset: Offset(-4, -4),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  fillColor: white,
                  filled: true,
                  hintText: 'Search',
                  suffixIcon: Container(
                    margin: EdgeInsets.all(5),
                    // padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: fillColor4,
                    ),
                    child: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: _filterSuggestions,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _label.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // Update the selected index when an item is tapped
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: selectedIndex == index
                            ? primaryColor
                            : backgroundColor,
                      ),
                      child: Text(
                        _label[index],
                        style: TextStyle(
                          color: selectedIndex == index ? white : black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 0, // Spacing between columns
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8, // Spacing between rows
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridItem(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
