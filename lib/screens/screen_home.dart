import 'package:boxicons/boxicons.dart';

import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_plusbtn.dart';
import 'package:inv_mgt/screens/screen_billing.dart';
import 'package:inv_mgt/screens/screen_dashboard.dart';
import 'package:inv_mgt/screens/screen_delivery.dart';
import 'package:inv_mgt/screens/screen_faqs.dart';
import 'package:inv_mgt/screens/screen_venders.dart';
import 'package:inv_mgt/utils/colors.dart';
import 'package:sidebarx/sidebarx.dart';

import '../customui/custom_header.dart';
import 'screen_products.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 800;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomHeader(isLogedin: true),

          // Content view from here
          Expanded(
            child: Row(
              children: [
                Builder(builder: (context) {
                  return SideBarWidget(controller: _controller);
                }),
                if (isSmallScreen) SideBarWidget(controller: _controller),
                Expanded(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      switch (_controller.selectedIndex) {
                        case 0:
                          return const ScreenDashboard();
                        case 1:
                          return const ScreenProducts();
                        case 2:
                          return const ScreenBilling();
                        case 3:
                          return const ScreenVendors();
                        case 4:
                          return const ScreenDelivery();
                        default:
                          return const ScreenDashboard();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({Key? key, required SidebarXController controller})
      : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      showToggleButton: false,
      headerBuilder: (context, extended) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
          child: CustomPlusbtn(
            ontap: () {
              Navigator.of(context).pop();
              debugPrint("Quick add clicked");
            },
            btnName: "Quick Add",
            height: 40,
            width: 170,
          ),
        );
      },
      theme: SidebarXTheme(
        width: 80,
        margin: const EdgeInsets.all(2.0),
        padding: const EdgeInsets.all(2.0),
        itemMargin: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            color: clrlink,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: clrdark, width: 0.5)),
        hoverColor: clrsubtlebg,
        textStyle: TextStyle(color: clrsubtletxt),
        selectedTextStyle: const TextStyle(color: clrprimary),
        itemTextPadding: const EdgeInsets.only(left: 10),
        selectedItemTextPadding: const EdgeInsets.only(left: 10),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: clrlink, width: 0.5),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //border: Border.all(
          //   color: clrprimary,
          // ),
          gradient: LinearGradient(
            colors: [clrsubtlebg, clrsubtlebg],
          ),
          boxShadow: [
            BoxShadow(
              color: clrdark.withOpacity(0.28),
              blurRadius: 0,
            )
          ],
        ),
        hoverTextStyle: TextStyle(color: clrsubtletxt),
        iconTheme: IconThemeData(
          color: clrsubtletxt,
          size: 25,
        ),
        selectedIconTheme: IconThemeData(
          color: clrprimary,
          size: 25,
        ),
      ),
      extendedTheme: SidebarXTheme(
        // margin: const EdgeInsets.all(2.0),
        padding: const EdgeInsets.all(10.0),
        itemMargin: const EdgeInsets.all(2.0),
        width: 170,
        
        decoration: BoxDecoration(
          color: clrwhite,
          border: Border.all(color: clrloginbg, width: 2),
          // borderRadius: BorderRadius.circular(10.0)
        ),
      ),
      footerBuilder: (context, extended) {
        return Container(
          width: 160.0,
          decoration: BoxDecoration(
            color: clrsubtlebg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28, top: 10, bottom: 5, right: 15),
                  child: Text(
                    "Have some questions?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 5, right: 15, bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return const ScreenFaqs();
                        })
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: clrprimary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "look at the faqs",
                          style: TextStyle(color: clrwhite, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
        );
      },
      items: const [
        SidebarXItem(icon: Icons.dashboard_sharp, label: "Dashboard"),
        SidebarXItem(icon: Boxicons.bxs_box, label: "Products"),
        SidebarXItem(icon: Icons.receipt_sharp, label: "Billing"),
        SidebarXItem(icon: Icons.people_sharp, label: "Vendors"),
        SidebarXItem(icon: Boxicons.bxs_truck, label: "Delivery"),
      ],
    );
  }
}
