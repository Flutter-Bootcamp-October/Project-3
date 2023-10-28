import 'package:flutter/material.dart';

import 'package:yaqoot_project/Widgets/package_widgets/package_container.dart';
import 'package:yaqoot_project/globle/globle.dart';

class PackageScrool extends StatelessWidget {
  const PackageScrool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return PackageContainer(
          package: PackageList[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8,
        );
      },
      itemCount: PackageList.length,
    );
  }
}
