import 'package:flutter/material.dart';
import 'package:hostelp/utils/colors.dart';
import 'package:routemaster/routemaster.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // The search area here
        title: Container(
          height: 50,
          child: Material(
            child: SizedBox(
              height: 100,
              child: TextField(
                autofocus: true,
                textAlignVertical: TextAlignVertical.bottom,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(25),
                  hintText: 'Search here',
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: themePurple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xff645CBB),
                      width: 2.5,
                    ),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {
                      Routemaster.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
