import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/package.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class PackageContainer extends StatefulWidget {
  final Packagedata package;

  const PackageContainer({super.key, required this.package});
  @override
  _PackageContainerState createState() => _PackageContainerState();
}

class _PackageContainerState extends State<PackageContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Stack(children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: double.infinity,
            height: isSelected ? 500 : 80,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (isSelected)
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.zero,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const ImageIcon(
                        AssetImage('lib\\assets\\icons\\one.png'),
                        color: white,
                        size: 40,
                      ),
                      const ImageIcon(
                        AssetImage('lib\\assets\\icons\\close.png'),
                        color: white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.package.Name,
                            style: const TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            widget.package.Type,
                            style: const TextStyle(
                                color: white, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (!isSelected)
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.zero,
                          bottomRight: Radius.zero,
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage('lib\\assets\\icons\\one.png'),
                            color: white,
                            size: 40,
                          ),
                          ImageIcon(
                            AssetImage('lib\\assets\\icons\\close.png'),
                            color: white,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.package.Name,
                              style: const TextStyle(
                                color: purpul,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              widget.package.Type,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 226, 158, 0),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Text(
                                  'Start with',
                                  style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  ' ${widget.package.Price} SAR / month',
                                  style: const TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              if (isSelected)
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Package Features:',
                              style: TextStyle(
                                  color: purpul,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900),
                            ),
                            Row(
                              children: [
                                ImageIcon(AssetImage(widget.package.ImageCalls),
                                    color: red),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  widget.package.calls,
                                  style: const TextStyle(
                                      color: purpul,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                                const Text(
                                  " Local Calls & SMS",
                                  style: TextStyle(
                                    color: purpul,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            Row(children: [
                              ImageIcon(AssetImage(widget.package.ImageWifi),
                                  color: red),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                widget.package.Wifi,
                                style: const TextStyle(
                                    color: purpul,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800),
                              ),
                              const Text(
                                " Internet",
                                style: TextStyle(
                                  color: purpul,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                            Row(
                              children: [
                                ImageIcon(
                                    AssetImage(widget.package.ImageDuration),
                                    color: red),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  "Package is vaild for ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: purpul,
                                  ),
                                ),
                                Text(
                                  widget.package.duration,
                                  style: const TextStyle(
                                      color: purpul,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ImageIcon(AssetImage(widget.package.ImageApp),
                                    color: red),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  widget.package.app,
                                  style: const TextStyle(
                                      color: purpul,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                                const Text(
                                  " Apps",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: purpul,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ImageIcon(
                                    AssetImage(widget.package.ImageGiftapp),
                                    color: red),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  widget.package.giftapp,
                                  style: const TextStyle(
                                      color: purpul,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                                const Text(
                                  " Apps To Share",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: purpul,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ImageIcon(
                                    AssetImage(widget.package.ImageNetwork),
                                    color: red),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  "Compatible with ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: purpul,
                                  ),
                                ),
                                Text(
                                  widget.package.network,
                                  style: const TextStyle(
                                      color: purpul,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        ))),
            ]),
          ),
        ]),
      ),
    );
  }
}
