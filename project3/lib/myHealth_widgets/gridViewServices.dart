import 'package:flutter/cupertino.dart';
import 'package:project3/myHealth_widgets/servieces.dart';

import '../screens/my_health_screen.dart';

class GridViewServices extends StatelessWidget {
  const GridViewServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: .80,
      children: [
        Services(
          luimage: 'assets/image 15.png',
          text1: 'My care\nteam',
          text2: 'Docror for\nevery family',
        ),
        Services(
          luimage: 'assets/3112a3acbd2dbd3d5d614b358635d09d 1.png',
          text1: 'Health\nRecord',
          text2: '',
        ),
        Services(
          luimage: 'assets/f38b90901dedf7109f752a93f5f779c8 1.png',
          text1: 'Medication',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 3.png',
          text1: 'Womoens\nHealth',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 4.png',
          text1: 'Lab',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 5.png',
          text1: 'Proscriptions',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 6.png',
          text1: 'Madical\nReports',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 7.png',
          text1: 'Visits',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 8.png',
          text1: 'Procedures',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 17.png',
          text1: 'Vaccines',
          text2: '',
        ),
        Services(
          luimage: 'assets/image 5.png',
          text1: 'Insurance\nApproval',
          text2: '',
        ),
      ],
    );
  }
}
