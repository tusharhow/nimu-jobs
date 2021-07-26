import 'package:flutter/material.dart';
import 'package:nimu_jobs/components/recomended_cart.dart';
import 'package:nimu_jobs/components/work_categories.dart';
import 'package:nimu_jobs/pages/detail_page.dart';

import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding * 2),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Image(
                    image: AssetImage('files/images/mourn.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Nimu Jobs\nfuck unemployment',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: defaultPadding,
                  right: defaultPadding,
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 0.0)),
                    fillColor: bgColor2,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white54),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Featured Jobs',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding * 2,
                        horizontal: defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.white54, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.06,
                // width: 350,
                decoration: BoxDecoration(
                  color: bgColor2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                              vertical: defaultPadding - 8),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('files/images/person1.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: 'Product Designer\n     ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              TextSpan(
                                  text: '   NimuSoft Labs',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 14))
                            ]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WorkCategories(
                          label: 'Full Time',
                        ),
                        WorkCategories(
                          label: 'Design',
                        ),
                        WorkCategories(
                          label: 'Junior',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Dhaka, Bangladesh',
                          style: TextStyle(color: Colors.white60, fontSize: 16),
                        ),
                        Text(
                          '\$1600/year',
                          style: TextStyle(color: Colors.white60, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Recomended Jobs',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding * 2,
                        horizontal: defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.white54, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                    },
                    child: RecommendCard(
                      imgSrc: 'files/images/person2.jpeg',
                      company: 'Google',
                      jobName: 'UX Designer',
                      salary: '\$1600/year',
                    ),
                  ),
                  RecommendCard(
                    imgSrc: 'files/images/person3.jpeg',
                    company: 'Facebook',
                    jobName: 'Engineer',
                    salary: '\$1900/year',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
