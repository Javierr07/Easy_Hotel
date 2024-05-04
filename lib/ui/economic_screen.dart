import 'package:easy_hotel/ui/roomcategory_screen.dart';
import 'package:flutter/material.dart';

import '../blocs/data.dart';

class EconomicScreen extends StatelessWidget {
  const EconomicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RoomCategoryPage(
      category: 'Económico',
      rooms: Economico,
    );
  }
}
