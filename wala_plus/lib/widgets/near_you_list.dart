import 'package:flutter/material.dart';
import 'package:wala_plus/constants/sizes.dart';
import 'package:wala_plus/screens/near_you_screen.dart';
import 'package:wala_plus/screens/store_info_screen.dart';

class NearYouList extends StatelessWidget {
  const NearYouList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: listStore.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StoreInfoScreen(
                      store: listStore[index],
                    );
                  },
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffe0e0e0),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        listStore[index].image,
                        fit: BoxFit.cover,
                        width: 64,
                        height: 64,
                      ),
                    ),
                  ),
                  title: Text(listStore[index].name,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(listStore[index].type,
                          style: const TextStyle(fontSize: 12)),
                      height4,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color(0xffeeeeee),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 4, left: 4),
                                child: Icon(
                                  Icons.discount_rounded,
                                  color: Color(0xffc699a2),
                                  size: 16,
                                ),
                              ),
                              Flexible(
                                child: Text(listStore[index].discount,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  isThreeLine: true,
                  trailing: Text(
                    listStore[index].location,
                    style: const TextStyle(
                        fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
