import 'package:flutter/material.dart';
import 'package:salamgram/model/chat_tile_model.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({Key? key, required this.tiles}) : super(key: key);
  final List<ChatTileModel> tiles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: tiles.length,
        itemBuilder: (BuildContext context, int index) {
          final ChatTileModel chatHead = tiles[index];
          return Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    chatHead.imagePath,

                                  ),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chatHead.name,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 1,
                                          ),
                                          child: (chatHead.hasSent == true)
                                              ? const Icon(
                                                  Icons.done,
                                                  color: Colors.grey,
                                                  size: 15,
                                                )
                                              : const SizedBox.shrink(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 1,
                                          ),
                                          child: (chatHead.hasRecieved == true)
                                              ? const Icon(
                                                  Icons.done_all_outlined,
                                                  color: Colors.grey,
                                                  size: 15,
                                                )
                                              : const SizedBox.shrink(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 1,
                                          ),
                                          child: (chatHead.hadRead == true)
                                              ? const Icon(
                                                  Icons.done_all_outlined,
                                                  color: Colors.green,
                                                  size: 15,
                                                )
                                              : const SizedBox.shrink(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 1,
                                          ),
                                          child: (chatHead.timeOut == true)
                                              ? const Icon(
                                                  Icons.schedule_rounded,
                                                  color: Colors.grey,
                                                  size: 15,
                                                )
                                              : const SizedBox.shrink(),
                                        ),
                                        Text(
                                          chatHead.recent_message,
                                          style:
                                              const TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          chatHead.time,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
