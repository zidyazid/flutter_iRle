part of 'models.dart';

class Kuis {
  final int id;
  final int idMateri;
  final String pertanyaan;
  final String jawabanBenar;

  Kuis({this.id, this.idMateri, this.pertanyaan, this.jawabanBenar});
}

List<Kuis> mockKuis = [
  Kuis(id: 1, idMateri: 2, pertanyaan: "pertanyaan 1?", jawabanBenar: "1"),
  Kuis(id: 2, idMateri: 3, pertanyaan: "pertanyaan 2?", jawabanBenar: "2"),
  Kuis(id: 3, idMateri: 1, pertanyaan: "pertanyaan 3?", jawabanBenar: "3"),
  Kuis(id: 4, idMateri: 4, pertanyaan: "pertanyaan 4?", jawabanBenar: "4"),
  Kuis(id: 1, idMateri: 2, pertanyaan: "pertanyaan 5?", jawabanBenar: "5"),
];
// List sample_kuis = [
//   {
//     "id": 1,
//     "pertanyaan": "apa nama ibu kota profinsi riau?",
//     "jawaban": "pekanbaru"
//   },
//   {
//     "id": 2,
//     "pertanyaan": "Siapa nama presiden indonesia pertama?",
//     "jawaban": "pekanbaru"
//   },
//   {
//     "id": 3,
//     "pertanyaan": "apa nama ibu kota profinsi riau?",
//     "jawaban": "pekanbaru"
//   }
// ];