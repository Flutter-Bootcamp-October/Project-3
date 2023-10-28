import 'package:flutter/material.dart';
import 'package:whats_app/Data/data_sets.dart';
import 'package:whats_app/Model/ChatMessage.dart';
import 'package:whats_app/custom%20widget/acc_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late List<Product> listProducts;

  @override
  void initState() {
    super.initState();
    listProducts = dataList.map((data) => Product.fromJson(data)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProducts.length,
      itemBuilder: (context, index) {
        final dataToPrint = listProducts[index];

        // Use dataToPrint for building your UI
        return ChatMessageWidget(product: dataToPrint);
      },
    );
  }
}
