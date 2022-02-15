import 'package:salamgram/assets.dart';
import 'package:salamgram/model/chat_tile_model.dart';
import 'package:salamgram/model/event_model.dart';
import 'package:salamgram/model/models.dart';
import 'package:salamgram/model/ramadan_schedule_model.dart';

final List<PillarModel> pillars = [
  PillarModel(name: 'Shahadah', imageUrl: Assets.shahadah, headers: [
    'Introduction',
    'Believing in God',
    'Believing in Prophet(PBUH)',
    'Believing in Holy Books',
    'Believing in angels',
    'Believing in judgment day',
    'Believing in fate'
  ]),
  PillarModel(name: 'Salah', imageUrl: Assets.salah, headers: [
    'Introduction',
    'Types of Salah/Namaz',
    'Daily Prayer Rakaats',
    'Rules of Qibla',
    'Condition for the dress worn for prayers',
    'Makrooh thing',
    'Things which make a prayer Void',
    'Doubt in Namaz'
  ]),
  PillarModel(name: 'Zakat', imageUrl: Assets.zakat, headers: [
    'Introduction',
    'Person of wealth on which zakat is obligatory',
    'Kinds of the wealth on which zakaat Imposed',
    'Zakat Distribution',
    'Kinds of the wealth not applicable for Zakat',
    'Zakat Recipients',
    'Person who cannot be given Zakat',
    'Punishment for not offering Zakat'
  ]),
  PillarModel(name: 'Fasting', imageUrl: Assets.fasting, headers: [
    'Introduction',
    'Things that Void a Fast',
    'Haram Fasts',
    'Person Exempted from fasting',
    'Things invalidating fast',
    'Fasting for sick person',
    'Kaffara for not keeping or breaking the fast'
  ]),
  PillarModel(name: 'Hajj', imageUrl: Assets.hajj, headers: [
    'Introduction',
    'Step 1: Entering in the state of Ihram',
    'Step 2: Performing Umrah',
    'Step 3: Departure to Mina',
    'Step 4: Departure to Arafat',
    'Step 5: Departure to Muzdalifa',
    'Step 6: Returning to MINA',
    'Step 7: Farewell Tawaf'
  ]),
];

//calendar event data
final List<CalendarEventModel> events = [
  CalendarEventModel(hijriDate: '1 Muharram,1441', date: '01 Sept,2021'),
  CalendarEventModel(hijriDate: '2 Muharram,1441', date: '02 Sept,2021'),
  CalendarEventModel(hijriDate: '3 Muharram,1441', date: '03 Sept,2021'),
  CalendarEventModel(hijriDate: '4 Muharram,1441', date: '04 Sept,2021'),
  CalendarEventModel(hijriDate: '5 Muharram,1441', date: '05 Sept,2021'),
  CalendarEventModel(hijriDate: '6 Muharram,1441', date: '06 Sept,2021'),
];

//ramadhan Schedule data
final List<RamadanSchedule> ramadan_schedule = [
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '02',
      day: 'Saturday,',
      date: '03 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '03',
      day: 'Sunday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '04',
      day: 'Monday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '05',
      day: 'Tuesday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '06',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '07',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '08',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '09',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '10',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
  RamadanSchedule(
      serialNumber: '01',
      day: 'Friday,',
      date: '02 April',
      seharTime: '03:48',
      iftartime: '19:44'),
];
// for chat screen
final List<ChatTileModel> chatTiles=[
  ChatTileModel(imagePath: Assets.profile1, name: 'Wade warren', recent_message: 'Go to hotel', time: '9.30 AM',hadRead: true),
  ChatTileModel(imagePath: Assets.profile2, name: 'Wade Knight', recent_message: 'can\'t come tommoworw', time: '10.30 AM',hasRecieved: true),
  ChatTileModel(imagePath: Assets.profile3, name: 'James Cooper', recent_message: 'Have a nice day', time: '2.30 AM',hadRead: true),
  ChatTileModel(imagePath: Assets.profile4, name: 'Bruce Wayne', recent_message: 'Hope it goes well', time: '5.30 AM',timeOut: true),
  ChatTileModel(imagePath: Assets.profile5, name: 'Robert Smith', recent_message: 'Will be there.', time: '6.30 AM',timeOut: true),
  ChatTileModel(imagePath: Assets.profile6, name: 'Arthur Morgan', recent_message: 'Don\'t worry' , time: '6.30 AM',timeOut: true),
  ChatTileModel(imagePath: Assets.profile7, name: 'Will jade', recent_message: 'Gotcha.', time: '9.30 AM',hadRead: true),
  ChatTileModel(imagePath: Assets.profile8, name: 'John doe', recent_message: 'Yeah, I\'ll be there' , time: '9.30 AM',hasSent: true),
  ChatTileModel(imagePath: Assets.profile1, name: 'Wade warren', recent_message: 'Go to hotel', time: '9.30 AM',hasSent: true),
  ChatTileModel(imagePath: Assets.profile2, name: 'Wade Knight', recent_message: 'can\'t come tommoworw', time: '10.30 AM',hasSent: true),
  ChatTileModel(imagePath: Assets.profile3, name: 'James Cooper', recent_message: 'Have a nice day', time: '2.30 AM',hasRecieved: true),
  ChatTileModel(imagePath: Assets.profile4, name: 'Bruce Wayne', recent_message: 'Hope it goes well', time: '5.30 AM',hadRead: true),
  ChatTileModel(imagePath: Assets.profile5, name: 'Robert Smith', recent_message: 'Will be there.', time: '6.30 AM',hasRecieved: true),
  ChatTileModel(imagePath: Assets.profile6, name: 'Arthur Morgan', recent_message: 'Don\'t worry' , time: '6.30 AM',hasRecieved: true),
  ChatTileModel(imagePath: Assets.profile7, name: 'Will jade', recent_message: 'Gotcha.', time: '9.30 AM',hadRead: true),
  ChatTileModel(imagePath: Assets.profile8, name: 'John doe', recent_message: 'Yeah, I\'ll be there' , time: '9.30 AM',hasRecieved: true),

];
