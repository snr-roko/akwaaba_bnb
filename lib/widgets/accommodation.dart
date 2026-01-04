import 'package:akwaaba_bnb/models/accommodation_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class AccommodationItem extends StatelessWidget {
  const AccommodationItem({super.key, required this.accommodation});

  final Accommodation accommodation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.blueGrey, width: 2.0)),
      ),
      child: Column(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(accommodation.photo),
          ),
          SizedBox(height: 20.0),
          Column(
            spacing: 15.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                accommodation.propertyName,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                accommodation.accommodationType,
                style: TextStyle(fontSize: 18.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GHS ${accommodation.pricePerNight}",
                    style: TextStyle(color: Colors.blue, fontSize: 20.0),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
