import 'package:easy_hotel/ui/roomcategory_screen.dart';
import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:flutter/material.dart';

import '../blocs/data.dart';
import 'menu.dart';

class EconomicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoomCategoryPage(
      category: 'Económico',
      rooms: Economico,
    );
  }
}