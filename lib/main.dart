import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SimpleComplexUI(),
));
class SimpleComplexUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 2 Created by Rania Zulfiqar"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text Input Field
            const Text(
              'Enter Your Name:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
            ),
            const SizedBox(height: 20),

            // Row with buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Save button press
                  },
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Cancel button press
                  },
                  child: const Text('Cancel'),

                ),
              ],
            ),
            const SizedBox(height: 20),

            // Container displaying some info
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Please fill the required information.',
                style: TextStyle(color: Colors.purple, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),

            // Nested Row inside a Container
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blueAccent),
                  Icon(Icons.thumb_down, color: Colors.redAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
