import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:suixin_app/ai/common/context_extension.dart';
import 'package:suixin_app/ai/theme/typography.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AiDevicesManagerPage extends StatefulWidget {
  const AiDevicesManagerPage({super.key});

  @override
  State<AiDevicesManagerPage> createState() => _AiDevicesManagerPageState();
}

class _AiDevicesManagerPageState extends State<AiDevicesManagerPage> {
  int volume = 6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: "https://via.placeholder.com/150",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "设备名称",
                      style: context.h2(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "电量 60%",
                      style: context.h5(),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "储存空间",
                    style: context.h3(),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "12M/64G",
                    style: context.h3(),
                  ),
                  const SizedBox(width: 6),
                  const Icon(Icons.arrow_right)
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "设备音量",
                  style: context.h3(),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                        color: context.xtColors().backgroundTertiary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            if (volume > 1) {
                              setState(() {
                                volume--;
                              });
                            }
                          },
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "$volume",
                              style: context.h3(),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (volume < 10) {
                              setState(() {
                                volume++;
                              });
                            }
                          },
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text("+",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              "当前语音包: product1",
              style: context.h3(),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "描述描述......",
              style: context.h4(),
            ),
          ],
        ),
      ),
    );
  }
}

class AiDevicesTabPage extends StatefulWidget {
  const AiDevicesTabPage({super.key});

  @override
  State<AiDevicesTabPage> createState() => _AiDevicesTabPageState();
}

class _AiDevicesTabPageState extends State<AiDevicesTabPage> {
  int volume = 6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(child: Container()),
                  InkWell(
                    onTap: () async {
                      String barcodeScanRes =
                          await FlutterBarcodeScanner.scanBarcode(
                              "#ff6666", "取消", false, ScanMode.DEFAULT);
                      // 扫描二维码成功后的回调
                    },
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Icon(Icons.qr_code)),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "我的设备",
                style: context.h9(),
              )
            ]),
      ),
    ));
  }
}
