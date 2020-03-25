import 'package:flutter/material.dart';
import 'pay_method.dart';
import 'home_page.dart';
import 'temp_pay_method.dart';
const String splashScreenViewRoute = '/';
const String homeRoute = 'home';
const String payRoute = 'pay';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name){
    case homeRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case payRoute:
      return MaterialPageRoute(builder: (context) => TempPayMethod());
  }
}

/*List<Map<String, String>> appList=[
    {
      'app_name':'PayTm',
      'package_name':'net.one97.paytm'
    },
    {
      'app_name':'GooglePay',
      'package_name':'com.google.android.apps.nbu.paisa.user'
    },
    {
      'app_name':'BhimUpi',
      'package_name':'in.org.npci.upiapp'
    },
    {
      'app_name':'PhonePe',
      'package_name':'com.phonepe.app'
    },
    {
      'app_name':'MiPay',
      'package_name':'com.mipay.wallet.in'
    },
    {
      'app_name':'AmaxonPay',
      'package_name':'in.amazon.mShop.android.shopping'
    },

  ];*/