import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> topics = [
    'All',
    'Politics',
    'Sports',
    'Religion',
    'Entertainment',
    'Technology',
    'Education',
    'Other',
  ];

  int _selectedTopicIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(160, 238, 238, 238),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(198, 206, 205, 205),
                          width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search here...',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: Icon(Icons.search, color: Colors.white),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF735C),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                child: Icon(Icons.filter_list, color: Colors.white),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF735C),
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 30,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ChoiceChip(
                    label: Text(topics[index]),
                    selected: _selectedTopicIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedTopicIndex = selected ? index : 0;
                      });
                    },
                    selectedColor: const Color(0xFFFF735C),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 6,
                    ),
                itemCount: topics.length),
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
