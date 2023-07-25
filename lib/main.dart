import 'package:flutter/material.dart';

void main() {
  runApp(const HairSylist());
}

class HairSylist extends StatelessWidget {
  const HairSylist({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){}, // Here's the fix, remove 'const' from IconButton
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: (){}, // Here's the fix, remove 'const' from IconButton
                      icon: const Icon(Icons.search, size: 30,),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Hair Stylist', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),),
                Row(
                  children: [
                    Container(
                      width: 100,

                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ... (The rest of the code remains unchanged)
