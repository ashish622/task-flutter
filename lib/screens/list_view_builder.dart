import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 40,
                child: RichText(
                  text: const TextSpan(
                    text: 'BTC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white
                    ),
                    children: [
                      TextSpan(
                        text: '/USDT',
                        style: TextStyle(fontSize: 12,color: Colors.white30)
                      )
                    ]
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('34563',style: TextStyle(fontSize: 16, color: Colors.red),),
                        Text('35453.78 USDT',style: TextStyle(fontSize: 10, color: Colors.white),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('-0.87%', style: TextStyle(fontSize: 14,color: Colors.white),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 40,
                child: RichText(
                  text: const TextSpan(
                      text: 'BTC',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      children: [
                        TextSpan(
                            text: '/USDT',
                            style: TextStyle(fontSize: 12,color: Colors.white30)
                        )
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('34563',style: TextStyle(fontSize: 16, color: Colors.red),),
                        Text('35453',style: TextStyle(fontSize: 10, color: Colors.white),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('-0.87%', style: TextStyle(fontSize: 14,color: Colors.white),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 40,
                child: RichText(
                  text: const TextSpan(
                      text: 'BTC',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      children: [
                        TextSpan(
                            text: '/USDT',
                            style: TextStyle(fontSize: 12,color: Colors.white30)
                        )
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('36765',style: TextStyle(fontSize: 16, color: Colors.green),),
                        Text('35453',style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('-0.87%', style: TextStyle(fontSize: 12,color: Colors.white),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 40,
                child: RichText(
                  text: const TextSpan(
                      text: 'BTC',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      children: [
                        TextSpan(
                            text: '/USDT',
                            style: TextStyle(fontSize: 12,color: Colors.white30)
                        )
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('34563',style: TextStyle(fontSize: 16, color: Colors.red),),
                        Text('35453.78 USDT',style: TextStyle(fontSize: 10, color: Colors.white),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('-0.87%', style: TextStyle(fontSize: 14,color: Colors.white),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 40,
                child: RichText(
                  text: const TextSpan(
                      text: 'BTC',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      children: [
                        TextSpan(
                            text: '/USDT',
                            style: TextStyle(fontSize: 12,color: Colors.white30)
                        )
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('36765',style: TextStyle(fontSize: 16, color: Colors.green),),
                        Text('35453',style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('-0.87%', style: TextStyle(fontSize: 12,color: Colors.white),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 40,
                child: RichText(
                  text: const TextSpan(
                      text: 'BTC',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      children: [
                        TextSpan(
                            text: '/USDT',
                            style: TextStyle(fontSize: 12,color: Colors.white30)
                        )
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('36765',style: TextStyle(fontSize: 16, color: Colors.green),),
                        Text('35453',style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('-0.87%', style: TextStyle(fontSize: 12,color: Colors.white),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
