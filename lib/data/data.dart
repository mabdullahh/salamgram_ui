import 'package:salamgram/assets.dart';
import 'package:salamgram/model/models.dart';

final List<PillarModel> pillars = [
  PillarModel(name: 'Shahadah', imageUrl: Assets.shahadah, headers: ['Introduction','Believing in God','Believing in Prophet(PBUH)','Believing in Holy Books','Believing in angels','Believing in judgment day','Believing in fate']),
  PillarModel(name: 'Salah', imageUrl: Assets.salah, headers: ['Introduction','Types of Salah/Namaz','Daily Prayer Rakaats','Rules of Qibla','Condition for the dress worn for prayers','Makrooh thing','Things which make a prayer Void','Doubt in Namaz']),
  PillarModel(name: 'Zakat', imageUrl: Assets.zakat, headers: ['Introduction','Person of wealth on which zakat is obligatory','Kinds of the wealth on which zakaat Imposed','Zakat Distribution','Kinds of the wealth not applicable for Zakat','Zakat Recipients','Person who cannot be given Zakat','Punishment for not offering Zakat']),
  PillarModel(name: 'Fasting', imageUrl: Assets.fasting, headers: ['Introduction','Things that Void a Fast','Haram Fasts','Person Exempted from fasting','Things invalidating fast','Fasting for sick person','Kaffara for not keeping or breaking the fast']),
  PillarModel(name: 'Hajj', imageUrl: Assets.hajj, headers: ['Introduction','Step 1: Entering in the state of Ihram','Step 2: Performing Umrah','Step 3: Departure to Mina','Step 4: Departure to Arafat','Step 5: Departure to Muzdalifa','Step 6: Returning to MINA','Step 7: Farewell Tawaf']),
];