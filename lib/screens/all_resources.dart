import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('All Resources'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('25 results'),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(25, (index) {
                        return FillImageCard(
                          imageProvider: const AssetImage('assetName'),
                          width: MediaQuery.of(context).size.width / 2.5,
                          heightImage: 200,
                          tags: const [Text('CSC201')],
                          title: const Text('Intro to CSC201'),
                          description: const Text('12th July 2023'),
                        );
                      }),
                    ),
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
