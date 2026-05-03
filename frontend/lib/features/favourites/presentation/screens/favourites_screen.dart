import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/features/favourites/presentation/favourites_event_card.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite")),
      body: ListView(
        children: const [
          FavouritesEventCard(
            title: "title",
            location: "Bhopal",
            buttonLabel: "paid",
            imageUrl: "",
          ),
          FavouritesEventCard(
            title: "title",
            location: "Bhopal",
            buttonLabel: "paid",
            imageUrl: "",
          ),
          FavouritesEventCard(
            title: "title",
            location: "Bhopal",
            buttonLabel: "paid",
            imageUrl: "",
          ),
        ],
      ),
    );
  }
}
