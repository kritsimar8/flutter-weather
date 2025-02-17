import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar:true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness:Brightness.dark,
        ),
      ),
      body:Padding(
        padding:const EdgeInsets.fromLTRB(40,1.2*kToolbarHeight,40,20),
        child:SizedBox(
          height:MediaQuery.of(context).size.height,
          child:Stack(
            children:[
              Align(
                alignment:AlignmentDirectional(2,-0.3),
                child:Container(
                  height:300,
                  width:300,
                  decoration:BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.deepPurple,
                  )
                )
              ),
              Align(
                alignment:AlignmentDirectional(-2,-0.3),
                child:Container(
                  height:300,
                  width:300,
                  decoration:BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.deepPurple,
                  )
                )
              ),
              Align(
                alignment:AlignmentDirectional(0,-1.3),
                child:Container(
                  height:300,
                  width:600,
                  decoration:BoxDecoration(
                 
                    color: Color(0xFFFFAB40),
                  )
                )
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX:100.0,sigmaY:100.0),
                child: Container(
                  decoration:const BoxDecoration(color:Colors.transparent),
                )
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:[
                  const  Text(
                      '📍 New-Delhi',
                      style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height:8),
                 const Text(
                      'Good Morning',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize:25,
                        fontWeight:FontWeight.bold
                      )
                    ),
                    Image.asset('assets/1.png'),
                    const Center(
                      child:Text(
                        '21 C',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize:55,
                          fontWeight:FontWeight.w600
                        )
                      )
                    ),
                    const Center(
                      child:Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:25,
                          fontWeight: FontWeight.w500
                        )
                      )
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        'Friday 16 - 09.41am',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize:16,
                          fontWeight: FontWeight.w100,
                        )
                      )
                    ),
                    const SizedBox(height:30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Row(
                           children:[
                        Image.asset(
                          'assets/11.png',
                          scale:8,
                        ),
                        const SizedBox(width:5),
                        const Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                            Text(
                              'Sunrise',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w100
                              ),
                            ),
                            SizedBox(height:3),
                            Text(
                              '5:34 am',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )
                            )
                          ]
                        )
                      ]
                        ),
                         Row(
                           children:[
                        Image.asset(
                          'assets/12.png',
                          scale:8,
                        ),
                        const SizedBox(width:5),
                        const Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                            Text(
                              'Sunset',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w100
                              ),
                            ),
                            SizedBox(height:3),
                            Text(
                              '5:34 pm',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )
                            )
                          ]
                        )
                      ]
                        )
                      ]

                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical:5.0),
                      child:Divider(
                        color:Colors.grey,
                      ),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Row(
                           children:[
                        Image.asset(
                          'assets/13.png',
                          scale:8,
                        ),
                        const SizedBox(width:5),
                        const Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                            Text(
                              'Temp Max',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w100
                              ),
                            ),
                            SizedBox(height:3),
                            Text(
                              '12 C',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )
                            )
                          ]
                        )
                      ]
                        ),
                         Row(
                           children:[
                        Image.asset(
                          'assets/14.png',
                          scale:8,
                        ),
                        const SizedBox(width:5),
                        const Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                            Text(
                              'Temp min',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w100
                              ),
                            ),
                            SizedBox(height:3),
                            Text(
                              '8 C',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )
                            )
                          ]
                        )
                      ]
                        )
                      ]

                    ),
                     
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}
