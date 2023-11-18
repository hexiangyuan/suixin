import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:suixin_app/ai/common/context_extension.dart';
import 'package:suixin_app/ai/home/model/product_model.dart';
import 'package:suixin_app/ai/repository.dart';
import 'package:suixin_app/ai/theme/typography.dart';

import '../xt_button.dart';

class AiHomeTabPage extends StatefulWidget {
  const AiHomeTabPage({super.key});

  @override
  State<AiHomeTabPage> createState() => _AiHomeTabPageState();
}

class _AiHomeTabPageState extends State<AiHomeTabPage> {
  List<ProductItem> _data = [];
  final repository = AiRepository();

  @override
  void initState() {
    super.initState();
    repository.getAllProducts().then((value) {
      setState(() {
        _data = value;
      });
    }).onError((error, stackTrace) {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: _itemBuilder,
        itemCount: _data.length,
      ),
    );
  }

  Widget? _itemBuilder(BuildContext context, int index) {
    final item = _data[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: item.logo,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: context.h2(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  item.desc,
                  maxLines: 2,
                  style: context.h4(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "¥ ${item.price.toStringAsFixed(2)}",
                  maxLines: 2,
                  style: context.h3().copyWith(color: context.xtColors().main),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: 60,
            height: 32,
            child: SquareButton(
              "下载",
              fontSize: 12,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
