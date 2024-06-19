import 'package:flutter/material.dart';


AppBar appBar() => AppBar(
  backgroundColor: const Color(0xffe5e5e5),
  leading: const Icon(Icons.arrow_back, color: Colors.black),
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Fruits',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xff19191b),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Color(0xff59595c),
                size: 36,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const ChoiceChip(
                  label: Text('Apple'),
                  // remove icon from choise chip
                  showCheckmark: false,
                  selectedColor: Colors.white,
                  selected: true,
                ),
                const SizedBox(width: 8),
                for (final item in list)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff9e9898),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          item,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    ),
  ),
);

const list = ['Banana', 'Papaya', 'Watermelon', 'Zucchini'];

