part of 'models.dart';

class Materi extends Equatable {
  // mendefinisikan variable
  final int id;
  final Kuis kuis;
  final String judul;
  final String desc;
  final String isi;
  final String contoh;
  final String rumus;

  // membuat constructor yang akan mengirimkan nilai
  Materi({
    this.id,
    this.kuis,
    this.judul,
    this.desc,
    this.isi,
    this.contoh,
    this.rumus,
  });

  @override
  List<Object> get props => [id, judul, desc, isi, contoh, rumus];

  // membuat variable yang menyimpan nilai list
}

List<Materi> mockMateries = [
  Materi(
      id: 3,
      kuis: mockKuis[0],
      judul: 'Past tense',
      desc: 'tenses about the past',
      rumus: 'subject + to be + object + prediket',
      contoh: "I was a driver before",
      isi:
          'Film dengan animasi keren Demon Slayer - Kimetsu no Yaiba - The Movie: Mugen Train di Viu. Streaming Demon Slayer - Kimetsu no Yaiba - The Movie: Mugen Train Sub Indo dan Full HD. Shows: Tale of the Nine Tailed, Running Man, Suspicious Partner, Knowing Bros, 18 Again, Descendants of The Sun, The Penthouse, Touch Your Heart.'),
  Materi(
      id: 1,
      judul: 'Prasent Tense',
      desc: 'something did in this time kjhlkhlhgjgf kjgfjhgfjgfjfjf lhg',
      rumus: 'subject + to be + object + prediket',
      isi:
          'Present tense kjhlkhlhgjgf kjgfjhgfjgfjfjf lhg fddgf dfgdfg dfgdfg dfgdfg dfgdfg dfgdfg dfgdfg.'),
  Materi(
      id: 2,
      kuis: mockKuis[2],
      judul: 'Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 4,
      judul: 'Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 5,
      judul: 'Perfect Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 6,
      judul: 'Continues Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 7,
      judul: 'Past Perfect Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 8,
      judul: 'Past Perfect Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 9,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 10,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 11,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 12,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 13,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 14,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 13,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
  Materi(
      id: 14,
      judul: 'Past Future Tense',
      desc: 'something did in this time',
      isi: 'Future tense...'),
];
