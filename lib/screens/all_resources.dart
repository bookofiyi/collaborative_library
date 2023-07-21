import 'package:flutter/material.dart';

class AllResources extends StatefulWidget {
  const AllResources({super.key});

  @override
  State<AllResources> createState() => _AllResourcesState();
}

class _AllResourcesState extends State<AllResources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('All Resources'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('25 results'),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
