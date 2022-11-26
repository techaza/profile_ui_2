import 'package:flutter/material.dart';
import 'Data.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.menu_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://imgs.search.brave.com/YHTIBLDJXyd4LCyHsvd5vJlbDuWzJ1Jv_g5R1n0-1IM/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5N/c1lFNzMtZHpyTlZ0/anAzTGhaWnBnSGFI/YSZwaWQ9QXBp'),
              radius: 50,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://imgs.search.brave.com/WkWMEoWESA-wPyfKNDTDLcv0CpL6HoALgLT92SZkxnU/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2U0/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5hWVZicUVG/YjJNLVNXc0JoX0xh/ZklRSGFIYSZwaWQ9/QXBp',
                  ),
                  radius: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://imgs.search.brave.com/hA6ydYGXbI0O2zn9DyC--mo7ZWRB-_WFDf4sIwQvar0/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5r/bW1qRHpzeENnbzlX/Vm5kLVU5NjJBSGFF/OCZwaWQ9QXBp',
                  ),
                  radius: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://imgs.search.brave.com/cpL4n2Izj9ztzFUvfGBaUo-YIhGy_E9l9HNRLGoUSSU/rs:fit:780:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5x/dHhpeFlUTzNma19N/TjJDbXJLNVNBSGFF/ZyZwaWQ9QXBp',
                  ),
                  radius: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://imgs.search.brave.com/CtPUIIBmv4kTPlWh2xVe0bVIN5V1sJ28IF5-6k8vEgE/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC50/Q2RBSmxfNUdpQ3Vk/aHNER1QyaXJRSGFI/YSZwaWQ9QXBp',
                  ),
                  radius: 20,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Mr.techaza',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '@techaza',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''Mobile App Developer And Open 
              source enthusiastic''',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.withOpacity(.4)),
                          child: ListTile(
                            leading: Icon(Options[index][0]),
                            title: Text(Options[index][1]),
                            trailing: Icon(Icons.chevron_right_rounded),
                          )),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: Options.length),
            )
          ],
        ),
      ),
    );
  }
}
