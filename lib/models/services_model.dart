class ServicesModel {
  String _title;
  List<String>? descripitons = [];
  String? description = "";
  String _imgPath;
  bool? isHigDemand = false;
  int _noOfProviders = 128;

  ServicesModel(
    this._title,
    this._imgPath, {
    this.descripitons,
    this.description,
    this.isHigDemand,
  });

  String get title => this._title;
  int get noOfProviders => this._noOfProviders;

  String get imgPath => _imgPath;
}
