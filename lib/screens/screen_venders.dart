import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_cont_btn.dart';
import 'package:inv_mgt/customui/vendor_dropdown.dart';

import '../customui/custom_plusbtn.dart';
import '../customui/custom_textfield.dart';
import '../utils/colors.dart';

class ScreenVendors extends StatefulWidget {
  const ScreenVendors({super.key});

  @override
  State<ScreenVendors> createState() => _ScreenVendorsState();
}

class _ScreenVendorsState extends State<ScreenVendors> {
  TextEditingController searchcontroller = TextEditingController();
  TextEditingController vendornamecntrl = TextEditingController();
  TextEditingController vendoremailcntrl = TextEditingController();
  TextEditingController vendorphonecntrl = TextEditingController();
  TextEditingController vendordesccntrl = TextEditingController();

  var currentscreen;
  @override
  void initState() {
    currentscreen = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;

    Widget vendorslist = Container(
      child: Column(children: <Widget>[
        SizedBox(
          height: 80.0,
          width: Width,
          // color: clraccenting,
          child: Row(children: [
            SizedBox(
              height: 40,
              width: Width > 1200 ? Width * 0.35 : 300,
              child: CustomTextField(
                  controller: searchcontroller,
                  hintTxt: "Search",
                  obscureTxt: false),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                debugPrint("search clicked");
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: clrprimary, borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.search,
                  color: clrwhite,
                ),
              ),
            ),
            SizedBox(width: Width > 1200 ? 50 : 30),
            SizedBox(
              height: 80,
              width: Width > 1200 ? Width * 0.16 : 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(" Sort By"),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: clrgrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const VendorDropdown(),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPlusbtn(
                      btnName: "Add Vendors",
                      ontap: () {
                        setState(() {
                          currentscreen = 2;
                        });
                      },
                      height: 40,
                      width: 180,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        // Listview ui
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: Width > 1200 ? Width * 0.04 : Width * 0.06),
            const Text(
              'Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: Width > 1200 ? Width * 0.19 : Width * 0.13),
            const Text(
              'Product Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: Width > 1200 ? Width * 0.2 : Width * 0.08),
            const Text(
              'Contact Info',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: Height - 198,
          width: Width,
          child: Container(
            height: 70,
            width: Width,
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(color: clrgrey),
            )),
            child: ListView.builder(itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 150,
                    child: Row(children: [
                      CircleAvatar(
                        radius: 22,
                        child: Image.asset('assets/images/man.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Niharika',
                          style: TextStyle(
                              fontSize: 16,
                              color: clrdark,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                  ),
                  const Text(
                    'Acitonide',
                    style: TextStyle(
                      fontSize: 16,
                      color: clrdark,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '8158525123',
                          style: TextStyle(
                            fontSize: 16,
                            color: clrdark,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'niharika123@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: clrdark,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: SizedBox(
                      height: 12,
                      width: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 3,
                            color: clrdark,
                          ),
                          const Icon(
                            Icons.circle,
                            size: 3,
                            color: clrdark,
                          ),
                          const Icon(
                            Icons.circle,
                            size: 3,
                            color: clrdark,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
        )
      ]),
    );

    // 2nd screen ui
    Widget vendorsaddform = Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: clrgrey),
                    borderRadius: BorderRadius.circular(10.0),
                    color: clrsubtlebg),
                child: Image.asset('assets/images/man.png'),
              ),
              const SizedBox(height: 15.0),
              CustomContBtn(
                width: 150,
                clr: clrprimary,
                ontap: () {},
                btnName: 'Browse photos',
                clrbtntxtname: clrwhite,
              ),
              const SizedBox(height: 15.0),
              CustomContBtn(
                width: 150,
                clr: clrbtnred,
                ontap: () {},
                btnName: 'Remove photos',
                clrbtntxtname: clrwhite,
              ),
            ],
          ),
          const SizedBox(width: 50),
          SizedBox(
            height: 500,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: clrdark,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                controller: vendornamecntrl,
                hintTxt: 'Mr/Ms Firstname Lastname',
                obscureTxt: false,
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: clrdark,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                controller: vendoremailcntrl,
                hintTxt: 'example@gmail.com',
                obscureTxt: false,
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: clrdark,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                controller: vendorphonecntrl,
                hintTxt: '+91 1234567890',
                obscureTxt: false,
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: clrdark,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: vendordesccntrl,
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: 'Description',
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    focusColor: clrprimary,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: clrprimary, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              const SizedBox(height: 50),
              Row(children: [
                CustomContBtn(
                  width: 190, 
                  clr: clrprimary, 
                  ontap: (){
                    setState(() {
                      currentscreen = 1;
                    });
                  }, 
                  btnName: 'Add Vendor',
                  clrbtntxtname: clrwhite,
                ),
                const SizedBox(width: 20),
                CustomContBtn(
                  width: 190, 
                  clr: clrwhite, 
                  ontap: (){
                    setState(() {
                      currentscreen=1;
                    });
                  },
                  btnName: 'Cancel',
                  clrbtntxtname: clrdark,
                  )
              ],)
            ]),
          )
        ],
      ),
    );

    return Container(
        height: Height,
        width: Width,
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(color: clrloginbg, width: 2.0),
          top: BorderSide(color: clrloginbg, width: 2.0),
          right: BorderSide(color: clrloginbg, width: 2.0),
        )),
        child: Column(
          children: [
            if (currentscreen == 1)
              vendorslist
            else if (currentscreen == 2)
              vendorsaddform
            else
              vendorslist
          ],
        ));
  }
}
