import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';

class ChatsListScreen extends StatefulWidget {
  @override
  _ChatsListScreenState createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<ChatsListScreen> {
  
final homeguestcontroller = Get.put(HomeGuestController(authRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
    elevation: 0.0,
        // leading: GestureDetector(
        //     onTap: () {
        //       Get.back();
        //     },
        //     child: Icon(
        //       Icons.arrow_back_ios_new_rounded,
        //       size: 18.sp,
        //     )),
       
        automaticallyImplyLeading: false,
        title: Text(
         "Chats",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Container(child: Row(children: [
            CircleAvatar(
              radius: 20.sp,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/chatslistprofilepic3.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 8),
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                      Row(
                                        children: [
                                          Text("Hello",style: TextStyle(color: Color(0xff2E3192),fontWeight: FontWeight.w700),),
                                          SizedBox(width: 1.w,),
                                          
                                          Icon(Icons.waving_hand,color: Color(0xffFFD232),size: 17.sp,),
                                        ],
                                      ),
                                      
                                      Text("Mathew Smith",style: TextStyle(color: Color(0xff000000).withOpacity(0.7),fontWeight: FontWeight.w400
                                      ,fontSize: 14.sp
                                      ),),
                            ],),
                          )
          ],),),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          
          Padding(
            padding: const EdgeInsets.all(18),
            child: SizedBox(height: 4.h,child: TextFormField(
              
                            style: TextStyle(fontSize: 14.sp),
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                'assets/images/homesearchicon.png',
                                color: Colors.black,
                                scale: 1.4,
                              ),
                              contentPadding: EdgeInsets.only(top: 10,right: 12),
                              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff1375EA),
                   
                  ),
                  
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                   color: Color(0xff1375EA),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                              fillColor: Color(0xffF5F5F5),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff000000).withOpacity(0.6)
                              ),
                            ),
                            onSaved: (value) {},
                          ),)
          ),
          
         Obx(() =>  ListView.builder(
            physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: homeguestcontroller.chatslist.length,
        itemBuilder: (context, index) {
          final chatslistdata = homeguestcontroller.chatslist[index];
          return Dismissible(
            key: UniqueKey(),
            
            background: Container(
        
              decoration: BoxDecoration(
             color: const Color(0xff2E3192),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.delete_outline_rounded,color: Color(0xffFFFFFF),),
                ),
              ),
            ),
            onDismissed: (direction) {
      homeguestcontroller.       chatslistremove(index);
            
            },
            confirmDismiss: (direction) async {
             
              return true;
            },
            child: GestureDetector(
              onTap: () {
             Get.toNamed(RouteConstants.chatscreen);
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 1),
                    decoration: BoxDecoration(
                      color:   Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(chatslistdata.imageUrl),
                          ),
                          title: Text(
                            chatslistdata.userName,
                            style: TextStyle(fontSize: 12,color: Color(0xff1B1B1B),fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            chatslistdata.userDescription,
                            style: TextStyle(fontSize: 10,color: Color(0xff757474)),
                          ),
                          trailing: Text(
                            chatslistdata.time,
                            style: TextStyle(fontSize: 10,color: Color(0xffC8BCBC)),
                          ),
                        ),
                         Divider(color: Color(0xffD9D9D9),thickness: 2,)
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
          );
        },
            ))
         
         ],),
      ),);
  }
}

class ChatsList {
  final String userName;
  final String userDescription;
  final String time;
  final String imageUrl;

  ChatsList({
    required this.userName,
    required this.userDescription,
    required this.time,
    required this.imageUrl,
  });
}
