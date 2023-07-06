import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'list_view_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController ;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(0.01),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width*0.40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.account_circle_outlined,color: Colors.white,size: 24,),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.card_giftcard,color: Colors.cyan,size: 16,),
                        Text('Rewrds Hub',style: TextStyle(color: Colors.cyan,fontSize: 14),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width*0.40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.search,color: Colors.white,size: 28,),
                  SizedBox(width: 8,),
                  Icon(Icons.qr_code_scanner,color: Colors.white,size: 28,),
                  SizedBox(width: 8,),
                  Icon(Icons.headset_mic_outlined,color: Colors.white,size: 28,),
                  SizedBox(width: 8,),
                  Icon(Icons.mail_outline,color: Colors.white,size: 28,),
                  SizedBox(width: 10,)
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black12,
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Carousel
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.0,
                    autoPlayAnimationDuration: const Duration(milliseconds: 300)
                  ),
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.95,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: const Image(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.fill,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.96,
                      height: double.infinity-4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Image(image: AssetImage('assets/images/img_2.png'),fit: BoxFit.contain,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.96,
                      height: double.infinity-4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Image(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.contain,),
                    )
                  ],
                ),
              ),

              // Announcements slider
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.announcement_outlined,color: Colors.white30,size: 14,),
                    const SizedBox(width: 12,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: 30,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CarouselSlider(
                        items: const [
                          Text('thus shsdh hjgd hjsd hjsgd ',
                            style: TextStyle(color: Colors.white30,fontSize: 10),
                            textAlign: TextAlign.start,
                          ),
                          Text('thus shsdh hjgd hjsd hjsgd ',
                            style: TextStyle(color: Colors.white30,fontSize: 10),
                          ),
                          Text('thus shsdh hjgd hjsd hjsgd ',
                            style: TextStyle(color: Colors.white30,fontSize: 10),
                          )
                        ],
                        options: CarouselOptions(
                          scrollDirection: Axis.vertical,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          autoPlayAnimationDuration: const Duration(milliseconds: 300)
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // deposit/buy and trending
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    // Trending and hot
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 10),),
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 10),),
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 10),),
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            Text('BTC/USDT',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                      ],
                    ),

                    // Buy, deposit and sell buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white10
                          ),
                          child: const Center(child: Text('Deposit',style: TextStyle(color:Colors.white,fontSize: 16),)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white10
                          ),
                          child: const Center(child: Text('Buy & Sell',style: TextStyle(color:Colors.white,fontSize: 16),)),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.push_pin_rounded,color: Colors.white30,size: 28,),
                              Text('NFT',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white60
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.monetization_on_outlined,color: Colors.white30,size: 28,),
                              Text('Earn',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white60
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.chat,color: Colors.white30,size: 28,),
                              Text('Chat',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white60
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.rocket_launch_outlined,color: Colors.white30,size: 28,),
                              Text('Launchpad',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white60
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.list_outlined,color: Colors.white30,size: 28,),
                              Text('Vote Listing',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white60
                              ),),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Tab-bar navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 10,),
                  TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorPadding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                    indicatorColor: Colors.white,
                    indicatorWeight: 2,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.white30,
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    tabs: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text('Hot',style: TextStyle(fontSize: 12),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text('Gainers',style: TextStyle(fontSize: 12,),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text('New',style: TextStyle(fontSize: 12,),),
                    ),
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 435,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    ListViewBuilder(),
                    ListViewBuilder(),
                    ListViewBuilder(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
