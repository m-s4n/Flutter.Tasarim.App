class Ogrenci {
  final int _id;
  final String _isim;
  final int _yas;

  const Ogrenci(this._id, this._yas, this._isim);

  int get id => _id;
  String get isim => _isim;
  int get yas => _yas;
}
