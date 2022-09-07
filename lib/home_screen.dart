import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/no_connection.json',
                  width: 150.w, height: 150.h),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Ooops!",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "No internet Connection Found\n Check Your Internet",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 40.h,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              side: const BorderSide(color: Colors.red)))),
                  onPressed: () {},
                  child: Text(
                    "Try Again",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
