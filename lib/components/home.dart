import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProductCard(),
          const SizedBox(height: 16),
          buildDifficultyCard(
            context,
            title: "Medium",
            borderColor: Colors.orange,
          ),
          const SizedBox(height: 8),
          buildDifficultyCard(
            context,
            title: "Hard",
            borderColor: const Color.fromARGB(255, 221, 106, 98),
          ),
        ],
      ),
    );
  }

  Widget buildDifficultyCard(BuildContext context,
      {required String title, required Color borderColor}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8), // Space between title and below row
              const Text(
                "Questions: 100",
                style: TextStyle(fontSize: 12.0, color: Colors.black),
              ),
              const Text(
                "Time: 10 Min",
                style: TextStyle(fontSize: 13.0, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(width: 16), // Space between columns
          const Text(
            "15\nRight Answers",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 16), // Space between columns
          const Text(
            "5\nSkipped",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 16), // Space between columns
          const Text(
            "10%\nPercentage",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey[300],
              child: const Center(
                child: Text('Image'),
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Category Name',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
                height: 16), // Space between description and quantity row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {},
                    ),
                    const Text('1'), // Quantity text
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // primary: Colors.grey[300], // Button color
                      // onPrimary: Colors.black, // Text color
                      ),
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ));
  }
}
