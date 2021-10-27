import 'package:flutter/material.dart';

class SearchBarWidget extends PreferredSize {
  final TextEditingController controller;
  final Function(String) onChanged;

  SearchBarWidget({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(120),
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(top: 30),
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const SizedBox(),
                trailing: const Icon(Icons.search),
                title: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                  onChanged: onChanged,
                ),
              ),
            ),
          ),
        );
}
