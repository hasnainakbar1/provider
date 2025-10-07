import 'package:flutter/material.dart';

var hasnain = [
  "Islamabad",
  "Lahore",
  "Karachi",
  "Peshawar",
  "Rawalpin",
  "Multan",
  "Hyderabad",
  "Quetta",
  "Islamabad",
  "Lahore",
  "Karachi",
  "Peshawar",
  "Rawalpin",
  "Multan",
  "Hyderabad",
  "Quetta",
  "Islamabad",
  "Lahore",
  "Karachi",
  "Peshawar",
  "Rawalpin",
  "Multan",
  "Hyderabad",
  "Quetta",
  "Islamabad",
  "Lahore",
  "Karachi",
  "Peshawar",
  "Rawalpin",
  "Multan",
  "Hyderabad",
  "Quetta",
  "Islamabad",
  "Lahore",
  "Karachi",
  "Peshawar",
  "Rawalpin",
  "Multan",
  "Hyderabad",
  "Quetta",
  "Islamabad",
  "Lahore",
  "Karachi",
  "Peshawar",
  "Rawalpin",
  "Multan",
  "Hyderabad",
  "Quetta"
];

var selected = "";

class asmatt extends StatefulWidget {
  const asmatt({super.key});

  @override
  State<asmatt> createState() => _asmatState();
}

class _asmatState extends State<asmatt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () async {
            var data = await showSearch(context: context, delegate: khan());

            if (data != null && data.isNotEmpty) {
              setState(() {
                selected = data; // update selected when returned
              });
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Search"),
              const SizedBox(height: 20),
              Text(selected),
            ],
          ),
        ),
      ),
    );
  }
}

class khan extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var matching = hasnain
        .where((element) =>
        element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: matching.length, // ✅ use matching length
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(7),
          child: InkWell(
            onTap: () {
              close(context, matching[index]); // ✅ return value properly
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.all(Radius.circular(21)),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  matching[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black45),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
