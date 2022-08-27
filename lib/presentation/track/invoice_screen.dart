import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/core/utils/colors.dart';
import 'package:reacon_customer/presentation/core/utils/custom_style.dart';
import 'package:reacon_customer/presentation/core/utils/dimensions.dart';
import 'package:reacon_customer/presentation/home/home.dart';
import 'package:reacon_customer/presentation/home/landing.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
  static const routeName = "invoice-screen";
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackBloc, TrackState>(listener: (context, state) {
      if (state.tripData.status == "PAYED") {
        Navigator.pushReplacementNamed(context, Landing.routeName);
      }
    }, builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Image.asset(
                  'assets/bg.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                DraggableScrollableSheet(
                  builder: (context, scrollController) {
                    return Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius * 3),
                              topRight:
                                  Radius.circular(Dimensions.radius * 3))),
                      child: SingleChildScrollView(
                        child: bodyWidget(context),
                        controller: scrollController,
                      ),
                    );
                  },
                  initialChildSize: 0.52,
                  minChildSize: 0.40,
                  maxChildSize: 0.77,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Column bodyWidget(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.heightSize * 3,
              left: Dimensions.marginSize,
              right: Dimensions.marginSize),
          child: Text(
            'Trip Invoice',
            style: GoogleFonts.roboto(
              fontSize: Dimensions.extraLargeTextSize,
              fontWeight: FontWeight.bold,
              color: CustomColor.primaryColor,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.heightSize),
        Image.asset(
          'assets/qrcode.png',
          height: 200.0,
        ),
        invoiceDetailsWidget(context),
        const SizedBox(height: Dimensions.heightSize * 3),
        /*  Padding(
          padding: const EdgeInsets.only(
              left: Dimensions.marginSize, right: Dimensions.marginSize),
          child: GestureDetector(
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: CustomColor.primaryColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.radius * 0.5))),
              child: Center(
                child: Text(
                  '',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
          ),
        ),
      */
      ],
    );
  }

  Padding invoiceDetailsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      context.read<TrackBloc>().state.tripData.customerName,
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Phone',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      context.read<TrackBloc>().state.tripData.customerPhone,
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Rider Name',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      context.read<TrackBloc>().state.driverData.name,
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pickup Location',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      context.read<TrackBloc>().state.tripData.from,
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Pick off Location',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      context.read<TrackBloc>().state.tripData.to,
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.heightSize),
          /*   Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start Ride',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      'Today, 12.00 PM',
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'End Ride',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      'Today 3.00 PM',
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        */
          SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Distances',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      '15 km',
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
              */
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Price',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      context.read<TrackBloc>().state.tripData.actualCost,
                      style: GoogleFonts.roboto(
                          fontSize: Dimensions.defaultTextSize,
                          color: CustomColor.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
