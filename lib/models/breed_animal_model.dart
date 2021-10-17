class BreedTypeModel {
  String _id = "";
  String _breedName = "Breed";
  bool _isChecked = false;

  get breedName => this._breedName;
  get isChecked => this._isChecked;

  void setChecked(bool? value) {
    this._isChecked = value!;
  }
}
