import 'package:flutter/material.dart';

class RechercheHeaderWidget extends StatelessWidget {
  const RechercheHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            label: Text('Rechercher'),
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
