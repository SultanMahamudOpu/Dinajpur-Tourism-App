import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../place/place_model.dart';
import 'detail_screen.dart';
import '../style/app_styles.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleDarkMode;  // Accept the toggleDarkMode function

  HomeScreen({required this.toggleDarkMode});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Place> _places = [
    // Hardcoded list of places (same as before)
    Place(
      id: 0,
      name: 'হাজী মোহাম্মদ দানেশ বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়',
      description:
      'হাজী মোহাম্মদ দানেশ বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় (HSTU) বাংলাদেশের একটি অন্যতম প্রযুক্তি ও বিজ্ঞানভিত্তিক উচ্চশিক্ষা প্রতিষ্ঠান। এটি দিনাজপুর জেলায় অবস্থিত এবং দেশের প্রথম কৃষিভিত্তিক প্রযুক্তি বিশ্ববিদ্যালয় হিসেবে পরিচিত। হাজী মোহাম্মদ দানেশ বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় ১৯৭৯ সালে একটি কৃষি কলেজ হিসেবে যাত্রা শুরু করে। পরে ১৯৯৯ সালে এটি পূর্ণাঙ্গ বিশ্ববিদ্যালয়ে রূপান্তরিত হয়। বিশ্ববিদ্যালয়টির নামকরণ করা হয়েছে বিশিষ্ট রাজনীতিবিদ ও সমাজসেবক হাজী মোহাম্মদ দানেশের নামে, যিনি বাংলাদেশের স্বাধিকার আন্দোলনে গুরুত্বপূর্ণ ভূমিকা পালন করেছেন।HSTU বিভিন্ন অনুষদ ও বিভাগসমূহের মাধ্যমে কৃষি, প্রকৌশল, প্রযুক্তি, ব্যবসা প্রশাসন, প্রাণিসম্পদ, মাৎস্যবিজ্ঞান, ভেটেরিনারি সাইন্সসহ বিভিন্ন ক্ষেত্রে স্নাতক ও স্নাতকোত্তর পর্যায়ে শিক্ষা প্রদান করে।',
      image: 'images/hstu.jpg',
      lat: 25.6952,
      lng: 88.6520,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 1,
      name: 'কান্তজিউ মন্দির',
      description:
      'কান্তজিউ মন্দির বাংলাদেশের দিনাজপুর জেলায় অবস্থিত একটি ঐতিহাসিক হিন্দু মন্দির, যা ১৭৫২ সালে রাজা রামনাথ নির্মাণ করেন। এটি ভগবান কৃষ্ণকে উৎসর্গকৃত এবং বাংলাদেশের অন্যতম সুন্দর টেরাকোটা স্থাপত্যের নিদর্শন। মন্দিরের গায়ে রামায়ণ, মহাভারত ও সামাজিক জীবনের নানা দৃশ্য খোদাই করা আছে। একসময় এটি নব-রত্ন (নয়টি চূড়া) বিশিষ্ট ছিল, তবে ১৮৯৭ সালের ভূমিকম্পে এর উপরের অংশ ধ্বংস হয়ে যায়। প্রতি বছর এখানে রাস উৎসব অনুষ্ঠিত হয়, যা বহু ভক্ত ও পর্যটকদের আকর্ষণ করে। বর্তমানে এটি প্রত্নতত্ত্ব অধিদপ্তরের সংরক্ষিত ঐতিহ্যবাহী স্থাপনা।',
      image: 'images/kantaji_temple.jpg',
      lat: 25.7904,
      lng: 88.6667,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 2,
      name: 'নয়াবাদ মসজিদ',
      description:
      'নয়াবাদ মসজিদ বাংলাদেশের দিনাজপুর জেলায় অবস্থিত একটি ঐতিহাসিক মসজিদ, যা ১৭৯৩ সালে নির্মিত হয় বলে ধারণা করা হয়। এটি দিনাজপুর রাজবাড়ির কাছাকাছি পুনর্ভবা নদীর তীরে অবস্থিত। মসজিদটি মুঘল স্থাপত্যশৈলীতে নির্মিত এবং এর তিনটি গম্বুজ ও কারুকার্যখচিত দেয়াল রয়েছে। ধারণা করা হয়, এটি তখনকার স্থাপত্যশিল্পীদের জন্য নির্মিত হয়েছিল, যারা দিনাজপুরের কান্তজিউ মন্দির তৈরিতে কাজ করেছিলেন। বর্তমানে এটি প্রত্নতত্ত্ব অধিদপ্তরের সংরক্ষিত স্থাপনা এবং পর্যটকদের আকর্ষণের একটি গুরুত্বপূর্ণ কেন্দ্র।',
      image: 'images/Nayabad_Mosque.jpg',
      lat: 25.7819,
      lng: 88.6587,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 3,
      name: 'রামসাগর জাতীয় উদ্যান',
      description:
      'রামসাগর জাতীয় উদ্যান বাংলাদেশের দিনাজপুর জেলায় অবস্থিত একটি পর্যটনকেন্দ্র ও সংরক্ষিত বনাঞ্চল। এটি মূলত দেশের বৃহত্তম মানবসৃষ্ট জলাশয় রামসাগর দীঘিকে কেন্দ্র করে গড়ে উঠেছে, যা দিনাজপুরের রাজা রামনাথ ১৭৫০ সালের দিকে খনন করেন। উদ্যানটি প্রাকৃতিক সৌন্দর্য, সমৃদ্ধ জীববৈচিত্র্য ও বিভিন্ন বন্যপ্রাণীর আবাসস্থল হিসেবে পরিচিত। এখানে বিভিন্ন প্রজাতির গাছপালা, পাখি ও হরিণসহ নানা বন্যপ্রাণী দেখা যায়। পর্যটকদের জন্য নৌকা ভ্রমণ, পিকনিক স্পট ও অবকাশযাপনের সুবিধা রয়েছে, যা এটিকে দিনাজপুরের অন্যতম আকর্ষণীয় স্থান করে তুলেছে।',
      image: 'images/ramsagar.jpg',
      lat: 25.5517,
      lng: 88.6217,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 4,
      name: 'দিনাজপুর রাজবাড়ী',
      description:
      'দিনাজপুর রাজবাড়ী বাংলাদেশের দিনাজপুর জেলায় অবস্থিত একটি ঐতিহাসিক স্থাপনা, যা ১৮ শতকে দিনাজপুরের রাজারা নির্মাণ করেন। এটি ছিল দিনাজপুরের রাজাদের আবাসস্থল ও প্রশাসনিক কেন্দ্র। রাজবাড়িটির স্থাপত্যে মুঘল ও ইউরোপীয় প্রভাব দেখা যায়, যেখানে সুন্দর কারুকাজ ও খিলানযুক্ত প্রবেশদ্বার রয়েছে। বর্তমানে এটি ধ্বংসপ্রায় হলেও এর কিছু অংশ এখনো টিকে আছে এবং প্রত্নতত্ত্ব অধিদপ্তর এটি সংরক্ষণ করছে। দিনাজপুর রাজবাড়ী ঐতিহাসিক ও স্থাপত্যিক গুরুত্বের কারণে পর্যটকদের জন্য অন্যতম আকর্ষণীয় স্থান।',
      image: 'images/rajbari.jpg',
      lat: 25.6459,
      lng: 88.6560,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 5,
      name: 'সুখসাগর',
      description:
      'সুখসাগর দিনাজপুর জেলার একটি ঐতিহাসিক জলাশয়, যা দিনাজপুরের রাজা সুখদেব রায় ১৮শ শতকে খনন করেন। এটি মূলত কৃষিকাজ ও পানীয় জল সরবরাহের জন্য তৈরি করা হলেও পরবর্তীতে এটি একটি দর্শনীয় স্থান হয়ে ওঠে। সুখসাগরের চারপাশে মনোরম প্রাকৃতিক পরিবেশ ও নানা প্রজাতির গাছপালা রয়েছে, যা পর্যটকদের আকর্ষণ করে। এটি দিনাজপুরের অন্যতম ঐতিহাসিক নিদর্শন এবং স্থানীয় জনগণের কাছে বিনোদন ও অবসর যাপনের একটি জনপ্রিয় স্থান।',
      image: 'images/shuk_shagor.jpg',
      lat: 25.6471,
      lng: 88.6597,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 6,
      name: 'স্বপ্নপুরী',
      description:
      'স্বপ্নপুরী বাংলাদেশের দিনাজপুর জেলায় অবস্থিত একটি জনপ্রিয় বিনোদনকেন্দ্র ও পর্যটনস্থল। এটি একটি কৃত্রিম পার্ক, যেখানে বিভিন্ন আকর্ষণীয় রাইড, কৃত্রিম জলপ্রপাত, চিড়িয়াখানা, মিনি চিড়িয়াখানা, শিশু পার্ক, বোটিং সুবিধা এবং সুন্দর প্রাকৃতিক পরিবেশ রয়েছে। স্বপ্নপুরী পরিবার ও বন্ধুদের সাথে অবকাশযাপনের জন্য উপযুক্ত স্থান এবং এটি স্থানীয় ও দূরদূরান্তের পর্যটকদের কাছে বেশ জনপ্রিয়।',
      image: 'images/shopnopuri.jpg',
      lat: 25.4296,
      lng: 89.1456,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 7,
      name: 'গোর-এ-শহীদ ঈদগাহ ময়দান',
      description:
      'গোর-এ-শহীদ ঈদগাহ ময়দান দিনাজপুর শহরের একটি ঐতিহাসিক স্থান, যা শহীদদের স্মৃতির উদ্দেশ্যে নির্মিত হয়েছে। এটি মূলত শহীদদের আত্মত্যাগের প্রতি শ্রদ্ধা নিবেদন করতে ব্যবহৃত হয় এবং এখানে প্রতি বছর ঈদুল ফিতর ও ঈদুল আযহার নামাজ অনুষ্ঠিত হয়। গোর-এ-শহীদ ময়দানটি স্থানীয় জনগণের জন্য এক গুরুত্বপূর্ণ ধর্মীয় ও সাংস্কৃতিক স্থান, যেখানে বৃহৎ সংখ্যক মুসল্লি ঈদের নামাজ আদায় করতে সমবেত হন। এটি শহরের কেন্দ্রস্থলে অবস্থিত এবং ঐতিহাসিক ও ধর্মীয় গুরুত্বের জন্য বেশ পরিচিত।',
      image: 'images/boromath.jpg',
      lat: 25.6218,
      lng: 88.6333,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 8,
      name: 'জীবন মহল',
      description:
      'জীবন মহল দিনাজপুর শহরের একটি ঐতিহাসিক স্থান, যা ১৯শ শতকের মাঝামাঝি সময়ে নির্মিত হয়। এটি এক সময় রাজাদের আবাসস্থল হিসেবে ব্যবহৃত হত এবং মুঘল স্থাপত্যশৈলীতে তৈরি। জীবন মহলটি দিনাজপুর রাজবাড়ির অংশ ছিল এবং এর গঠনশৈলী, কাঠামো ও কারুকাজ আজও ইতিহাসপ্রেমী ও পর্যটকদের আকর্ষণ করে। বর্তমানে এটি একটি ঐতিহ্যবাহী স্থাপনা হিসেবে সংরক্ষিত রয়েছে এবং স্থানীয় জনগণের জন্য একটি গুরুত্বপূর্ণ সাংস্কৃতিক স্থল।',
      image: 'images/jibonmahal.png',
      lat: 25.6319,
      lng: 88.6133,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 9,
      name: 'দাদু বাড়ি',
      description:
      'দাদু বাড়ি দিনাজপুর জেলার একটি ঐতিহাসিক স্থান, যা শহরের অদূরে অবস্থিত। এটি একটি পুরনো বাংলো ধরনের বাড়ি, যা অতীতের ঐতিহ্য ও স্থাপত্যের নিদর্শন হিসেবে পরিচিত। দাদু বাড়ি মূলত একটি প্রাচীন বাড়ি, যেখানে আগে একসময় স্থানীয় রাজবংশের সদস্যরা বাস করতেন। এর সুন্দর ডিজাইন, পুরনো কাঠামো এবং নির্মাণ শৈলী আজও মানুষের মনোযোগ আকর্ষণ করে। বর্তমানে এটি স্থানীয় সংস্কৃতি ও ইতিহাসের অংশ হিসেবে সংরক্ষিত এবং প্রাচীন স্থাপত্যশৈলীর এক উজ্জ্বল উদাহরণ হিসেবে পরিচিত।',
      image: 'images/daduBari.jpg',
      lat: 25.7166,
      lng: 88.6544,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 10,
      name: 'সিংড়া জাতীয় উদ্যান',
      description:
      'সিংড়া জাতীয় উদ্যান বাংলাদেশের নাটোর জেলার সিংড়া উপজেলায় অবস্থিত একটি সুন্দর প্রাকৃতিক উদ্যান। এটি ২০১৪ সালে জাতীয় উদ্যান হিসেবে ঘোষণা করা হয়। সিংড়া উদ্যানটি মূলত বিভিন্ন প্রজাতির বন্যপ্রাণী, পাখি এবং গাছপালায় সমৃদ্ধ, যা প্রকৃতিপ্রেমী ও বন্যপ্রাণী অনুসন্ধানকারীদের জন্য একটি জনপ্রিয় স্থান। এখানে নানান প্রজাতির মাছ, সাপ, স্তন্যপায়ী প্রাণী ও বন্য পাখি দেখা যায়। এটি পরিবেশের সংরক্ষণ ও শিক্ষা কার্যক্রমের জন্য গুরুত্বপূর্ণ ভূমিকা পালন করে এবং দেশের জীববৈচিত্র্য রক্ষায় সহায়ক।',
      image: 'images/singraNationalPark.jpg',
      lat: 25.8895,
      lng: 88.5638,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 11,
      name: 'দিনাজপুর জিরো পয়েন্ট',
      description:
      'দিনাজপুর জিরো পয়েন্ট বাংলাদেশের দিনাজপুর জেলার বিরল উপজেলায় অবস্থিত একটি গুরুত্বপূর্ণ স্থান। এটি মূলত বিরল উপজেলা শহরের কেন্দ্রস্থলে অবস্থিত এবং স্থানীয় রাস্তা ও পরিবহন নেটওয়ার্কের প্রাথমিক পয়েন্ট হিসেবে ব্যবহৃত হয়। দিনাজপুর জিরো পয়েন্ট থেকে বিভিন্ন সড়ক শুরু হয়, যা শহরের বিভিন্ন অংশে যোগাযোগ স্থাপন করে। এটি স্থানীয় জনগণের জন্য একটি পরিচিত ও গুরুত্বপূর্ণ স্থাপনা, যেখানে প্রায়ই যানবাহন ও লোকজনের সমাগম ঘটে।',
      image: 'images/zeroPoint.jpg',
      lat: 25.6207,
      lng: 88.6344,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 12,
      name: 'সীতাকোট বিহার',
      description:
      'সীতাকোট বিহার দিনাজপুর জেলার নবাবগঞ্জ উপজেলায় অবস্থিত একটি প্রাচীন বৌদ্ধ বিহার। এটি পঞ্চম বা ষষ্ঠ শতকের তৈরি, যা ১৯৬৭ সালে খনন করা হয়। বিহারটি প্রায় বর্গাকৃতির, ৪১টি কক্ষে বিভক্ত, এবং প্রতিটি কক্ষে পেছনে কুলুঙ্গি ছিল। দক্ষিণ দিকে প্রধান মন্দির এবং সম্মুখে স্তম্ভশোভিত প্যাভিলিয়ন ছিল। এতে শৌচাগারের জন্য পাঁচটি কক্ষও পাওয়া যায়। সীতাকোট বিহারের স্থাপত্য শালবন বিহার ও পাহাড়পুর বিহারের সাথে কিছুটা সাদৃশ্য রয়েছে।',
      image: 'images/sitaKot.jpg',
      lat: 25.2451,
      lng: 88.0306,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 13,
      name: 'বড়পুকুরিয়া কয়লাখনি',
      description:
      'বড়পুকুরিয়া কয়লাখনি বাংলাদেশের একমাত্র বাস্তবায়িত কয়লা খনি। এটি দিনাজপুরের পার্বতীপুরে অবস্থিত। এটি আবিষ্কৃত হয় ১৯৮৫ সালে। এর আয়তন ৬.৬৮ বর্গ কিলোমিটার।[১] এই অঞ্চলে কয়লা মজুদের পরিমাণ ৩৯০ মিলিয়ন মেট্রিক টন। এখানে বিটুমিনাস কয়লা পাওয়া যায়। বড়পুকুরিয়া কয়লা খনির প্রকল্প ব্যয় ২৫১.০৮ মিলিয়ন মার্কিন ডলার।[২] এর থেকে প্রাপ্ত কয়লা দিয়ে বড়পুকুরিয়া তাপবিদ্যুৎ কেন্দ্রে বিদ্যুৎ উৎপাদন করা হয়।',
      image: 'images/koilaKhoni.webp',
      lat: 25.6365,
      lng: 88.6363,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 14,
      name: 'আশুরার বিল',
      description:
      'আশুরার বিল দিনাজপুর জেলার নবাবগঞ্জ উপজেলার শালবনের উত্তর পাশে অবস্থিত একটি বিশাল বিল, যার আয়তন ২৫১.৭৮ হেক্টর। এই বিলের চারপাশ থেকে ৮০টি দার বা নালা ছড়িয়ে রয়েছে, যার কারণে এর নামকরণ করা হয় "আশুরার বিল"। এ বিলের মাঝে বিভিন্ন স্থান যেমন পাতিলদহ, বুড়িদহ, পীরদহ, মুনির আইল, কাজলাদহ, পালাদহ, মুনির থান ইত্যাদি নামে পরিচিত। এক সময় এখানে প্রচুর মাছ পাওয়া যেত, বিশেষত বোয়াল ও পাবদা মাছ। এছাড়া টেংরা, কই, মাগুর, পুটি, চিংড়ি, শোল, গজাড়, বাইম ইত্যাদি মাছও পাওয়া যেত। বর্ষাকালে শাপলা ফুল বিলের সৌন্দর্যকে বাড়িয়ে দেয়।বিলের চারপাশে স্থানীয় কৃষকরা বোরো ধান চাষ করে এবং ভালো ফলন পায়। আশুরার বিল মস্যজীবি সমবায় সমিতি লি: ২০১৩ সাল থেকে বিলটির ব্যবস্থাপনা করছে। মস্য অধিদপ্তরের অনুমতি নিয়ে প্রতি দুই বছর পর পর রাক্ষুসে প্রজাতির মাছ ধরা হয়, যাতে বাকি অংশে মাছ বড় হতে এবং প্রজনন করতে পারে। বর্তমানে বিলটি ভরাট হওয়ায় মাছ ধরার সুযোগ কমে গেছে।',
      image: 'images/ashurarBil.webp',
      lat: 25.6365,
      lng: 88.6363,
      policePhone: '999',
      fireServicePhone: '888',
    ),

    Place(
      id: 15,
      name: 'কড়াই বিল',
      description:
      'কড়াই বিল দিনাজপুর জেলার বিরল উপজেলার একটি জনপ্রিয় পর্যটন স্থান, যা বিরল উপজেলা শহর থেকে মাত্র ১ কিলোমিটার দূরে অবস্থিত। এ বিলের আয়তন ২৮ একর এবং পাড়ের পরিমাণ ১৮ একর। কড়াই বিলের চারপাশে কৃত্রিম হ্রদ, উদ্যান ও বিভিন্ন গাছগাছালি রয়েছে। শীতকালে এটি বিদেশি পাখিতে ভরে যায়। ১৯৭৪ সালে তৎকালীন সরকার কড়াই বিলটি মুক্তিযোদ্ধাদের রেজিস্ট্রি করে দেয়, এবং তারা বিরল থানা মুক্তিযোদ্ধা সমবায় সমিতি গঠন করে এখানে একটি পর্যটন প্রকল্প তৈরি করে। এটি ডিসেম্বর-জানুয়ারি মাসে দর্শনার্থীদের জন্য বিশেষ আকর্ষণ হয়ে থাকে।',
      image: 'images/kurilbul.jpg',
      lat: 25.6365,
      lng: 88.6363,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    // Other places ...
  ];

  List<Place> _filteredPlaces = [];
  final TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _filteredPlaces = _places; // Initialize filtered places with all places
  }

  void _searchPlaces(String query) {
    setState(() {
      _filteredPlaces = _places
          .where((place) =>
      place.name.toLowerCase().contains(query.toLowerCase()) ||
          place.description.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget _buildSearchBar() {
    // Determine whether the current theme is dark
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: _searchController,
        onChanged: _searchPlaces,
        style: TextStyle(
          color: isDark ? Colors.black : Colors.black, // Text color black in both themes
        ),
        decoration: InputDecoration(
          hintText: 'স্থান অনুসন্ধান করুন....',
          hintStyle: TextStyle(
            color: isDark ? Colors.white70 : Colors.black54, // Hint text color for dark mode
          ),
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: isDark ? Colors.grey[800] : Colors.grey[200], // Off-white for dark mode
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Determine whether the current theme is dark
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 4,
        title: Text(
          'দিনাজপুর অ্যাডভেঞ্চার',
          style: AppStyles.appBarTitleStyle,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppStyles.primaryGradient,
            boxShadow: [AppStyles.appBarShadow],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Transform.scale(
              scale: 0.6, // Adjust this value to scale the switch size
              child: Switch(
                value: isDark,
                onChanged: (value) {
                  widget.toggleDarkMode();
                },
                activeColor: AppStyles.accentColor, // Thumb color when active
                activeTrackColor: AppStyles.accentColor.withOpacity(0.5),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[400],
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          _buildSearchBar(),      // <-- Search bar below the app bar
          _buildTopImageSlider(),
          Expanded(child: _buildPlaceList()),
        ],
      ),
    );
  }

  Widget _buildTopImageSlider() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        children: [
          Container(
            height: 231,
            width: double.infinity,
            child: CarouselSlider(
              items: _places.map((place) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: AppStyles.carouselPadding,
                      child: ClipRRect(
                        borderRadius: AppStyles.defaultBorderRadius,
                        child: Image.asset(
                          place.image,
                          width: double.infinity,
                          height: AppStyles.carouselHeight,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: AppStyles.carouselHeight,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: AppStyles.carouselViewportFraction,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _places.map((place) {
              int index = _places.indexOf(place);
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? AppStyles.primaryColor
                      : AppStyles.secondaryColor,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceList() {
    return _filteredPlaces.isEmpty
        ? Center(
      child: Text(
        'No places found.',
        style: AppStyles.noPlacesFoundStyle,
      ),
    )
        : ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10),
      itemCount: _filteredPlaces.length,
      itemBuilder: (context, index) {
        final place = _filteredPlaces[index];
        return PlaceCard(place: place);
      },
    );
  }
}

class PlaceCard extends StatefulWidget {
  final Place place;

  const PlaceCard({required this.place});

  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  bool _isHovered = false;

  void _navigateToDetailScreen(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailScreen(place: widget.place),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildPlaceImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: Image.asset(
        widget.place.image,
        height: 180,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isHovered ? 1.02 : 1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GestureDetector(
            onTap: () => _navigateToDetailScreen(context),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: AppStyles.primaryColor.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: isDark
                        ? LinearGradient(
                      colors: [
                        Colors.grey.shade800,
                        Colors.grey.shade900
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                        : AppStyles.cardGradient,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image with Gradient Overlay
                      Stack(
                        children: [
                          _buildPlaceImage(),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.6),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.place.name,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 6,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: List.generate(
                                    5,
                                        (index) => Icon(
                                      Icons.star,
                                      color: AppStyles.accentColor,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Content Section
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.place.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                color: isDark
                                    ? Colors.white70
                                    : Colors.grey.shade700,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: AppStyles.accentColor,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'দিনাজপুর, বাংলাদেশ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: isDark
                                        ? Colors.white60
                                        : Colors.grey.shade600,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppStyles.accentColor
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.explore,
                                        color: AppStyles.accentColor,
                                        size: 16,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        'এক্সপ্লোর করুন',
                                        style: GoogleFonts.poppins(
                                          color: AppStyles.accentColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
