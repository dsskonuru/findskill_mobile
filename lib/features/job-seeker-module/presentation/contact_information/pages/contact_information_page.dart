import 'package:findskill/features/job-seeker-module/data/models/contact.dart';
import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class ContactInformationPage extends StatefulWidget {
  const ContactInformationPage({Key? key}) : super(key: key);

  @override
  _ContactInformationPageState createState() => _ContactInformationPageState();
}

class _ContactInformationPageState extends State<ContactInformationPage> {
  final List<Contact> _contact = [
    Contact(
      name: "Abc",
      address: "Gurgaon, Delhi",
      phoneNumber: "123456789",
      profession: 'Electrician',
    ),
    Contact(
      name: "Abc",
      address: "Gurgaon, Delhi",
      phoneNumber: "123456789",
      profession: 'Electrician',
    ),
    Contact(
      name: "Abc",
      address: "Gurgaon, Delhi",
      phoneNumber: "123456789",
      profession: 'Electrician',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    //AppLocalizations.of(context)!.translate("Scan your ID"),
                    "Contact List",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Theme.of(context).colorScheme.primary,
                        Colors.lightBlueAccent,
                        Colors.blue.shade200,
                      ]),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 1.h,
                      horizontal: 2.w,
                    ),
                    height: 7.h,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.work,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Credits",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "INR",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                              ),
                            ),
                            Text(
                              "FSC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "200",
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontSize: 33,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                height: 70.h,
                child: ListView.builder(
                  itemCount: _contact.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 11.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.w, vertical: 1.5.h),
                      child: LayoutBuilder(
                        builder: (context, constraints) => Row(
                          children: [
                            SizedBox(
                              width: constraints.maxWidth * 0.58,
                              //color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mr ${_contact[index].name}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                          fontSize: 19,
                                        ),
                                  ),
                                  Text(
                                    "${_contact[index].profession} from ${_contact[index].address}",
                                    style: const TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "+91 ${_contact[index].phoneNumber}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 19),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          Colors.lightBlueAccent,
                                          Colors.blue.shade200,
                                        ]),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                      height: 4.h,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0.5.h, horizontal: 2.w),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.call,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 0.5.w,
                                            ),
                                            Text(
                                              "Call",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button!
                                                  .copyWith(
                                                    color: Colors.white,
                                                  ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.2.w,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          Colors.lightBlueAccent,
                                          Colors.blue.shade200,
                                        ]),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                      height: 4.h,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0.5.h, horizontal: 1.w),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.call,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 0.5.w,
                                            ),
                                            Text(
                                              "Whatsapp",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button!
                                                  .copyWith(
                                                    color: Colors.white,
                                                  ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
