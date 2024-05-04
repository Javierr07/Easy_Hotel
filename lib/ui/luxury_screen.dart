import 'package:easy_hotel/ui/roomcategory_screen.dart';
import 'package:flutter/material.dart';

import '../blocs/data.dart';

class LuxuryScreen extends StatelessWidget {
  const LuxuryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RoomCategoryPage(
      category: 'Económico',
      rooms: Lujo,
    );
  }
}
