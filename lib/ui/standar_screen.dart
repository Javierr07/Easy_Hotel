import 'package:easy_hotel/ui/roomcategory_screen.dart';
import 'package:flutter/cupertino.dart';

import '../blocs/data.dart';

class StandarScreen extends StatelessWidget {
  const StandarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RoomCategoryPage(
      category: 'Económico',
      rooms: Estandar,
    );
  }
}
