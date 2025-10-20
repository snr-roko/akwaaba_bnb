import 'package:akwaaba_bnb/models/Category.dart';
import 'package:flutter/material.dart';


final List<Category> categoriesData = [
  Category(
    id: 'search_hotels',
    title: 'Search Hotels',
    shortDescription: 'Find your perfect stay',
    icon: const Icon(Icons.search, color: Colors.blueAccent, size: 28),
  ),
  Category(
    id: 'hotels',
    title: 'Hotels',
    shortDescription: 'Browse all hotels',
    icon: const Icon(Icons.home, color: Colors.orangeAccent, size: 28),
  ),
  Category(
    id: 'room_types',
    title: 'Room Types',
    shortDescription: 'Choose your room',
    icon: const Icon(Icons.meeting_room, color: Colors.purpleAccent, size: 28),
  ),
  Category(
    id: 'bookings',
    title: 'My Bookings',
    shortDescription: 'View your reservations',
    icon: const Icon(Icons.bookmark, color: Colors.green, size: 28),
  ),
  Category(
    id: 'payments',
    title: 'Payments',
    shortDescription: 'Manage payments',
    icon: const Icon(Icons.payment, color: Colors.redAccent, size: 28),
  ),
  Category(
    id: 'favorites',
    title: 'Favorites',
    shortDescription: 'Saved properties',
    icon: const Icon(Icons.favorite, color: Colors.pink, size: 28),
  ),
  Category(
    id: 'reviews',
    title: 'Reviews',
    shortDescription: 'Guest reviews & ratings',
    icon: const Icon(Icons.star, color: Colors.amber, size: 28),
  ),
  Category(
    id: 'account',
    title: 'Account',
    shortDescription: 'Manage your profile',
    icon: const Icon(Icons.person, color: Colors.tealAccent, size: 28),
  ),
  Category(
    id: 'support',
    title: 'Support',
    shortDescription: 'Get help & support',
    icon: const Icon(Icons.help_center, color: Colors.indigoAccent, size: 28),
  ),
  Category(
    id: 'offers',
    title: 'Special Offers',
    shortDescription: 'Exclusive deals',
    icon: const Icon(Icons.local_offer, color: Colors.deepOrangeAccent, size: 28),
  ),
];