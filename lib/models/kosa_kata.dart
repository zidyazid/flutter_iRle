part of 'models.dart';

class KosaKata {
  final int id;
  final String kataDasar;
  final User user;
  final String verb1;
  final String verb2;
  final String verb3;
  final String adVerb;
  final int status;

  KosaKata(
      {this.id,
      this.kataDasar,
      this.user,
      this.verb1,
      this.verb2,
      this.verb3,
      this.adVerb,
      this.status});

  copyWith(
      {int id,
      String kataDasar,
      User user,
      String verb1,
      String verb2,
      String verb3,
      String adVerb,
      int status = 0}) {
    return KosaKata(
        id: id ?? this.id,
        kataDasar: kataDasar ?? this.kataDasar,
        user: user ?? this.user,
        verb1: verb1 ?? this.verb1,
        verb2: verb2 ?? this.verb2,
        verb3: verb3 ?? this.verb3,
        adVerb: adVerb ?? this.adVerb,
        status: status ?? this.status);
  }
}

// KosaKata copyWith(
//     {int id,
//     String kataDasar,
//     String verb1,
//     String verb2,
//     String verb3,
//     String adverb,
//     int status = 0}) {
//   return KosaKata(
//       id: id ?? this.id,
//       kataDasar: kataDasar ?? this.kataDasar,
//       verb1: verb1 ?? this.verb1);
// }

List mockKosaKata = <KosaKata>[
  KosaKata(id: 1, kataDasar: "Run", verb1: "Runed", verb2: "runed", status: 0),
  KosaKata(
      id: 2, kataDasar: "Jump", verb1: "Jumped", verb2: "Jumped", status: 1),
];
