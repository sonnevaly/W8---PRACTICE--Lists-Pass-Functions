import 'package:flutter/material.dart';
import '../model/profile_tile_model.dart';

ProfileData valyProfile = ProfileData(
  name: "Nevaly",
  position: "King Pirate",
  avatarUrl: "assets/images/luffygear5.png",
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "nevaly@gmail.com"),
  ],
);
