class Laptop {
  var _id, _model, _ram;

  // Constructor
  Laptop({required var id, required var model, required var ram}) {
    this._id = id;
    this._model = model;
    this._ram = ram;
  }

  // short Hand syntax.

  void getId(var x) => _id = x;
  void getModle(var x) => _model = x;
  void getram(var x) => _ram = x;

  void dispaly() {
    print("\nLaptop Id  :-$_id");
    print("Laptop Modle  :-$_model");
    print("Laptop RAM  :-$_ram\n====================\n");
  }
}

void main() {
  Laptop l1 = new Laptop(id: 12, model: "Dell", ram: "4GB");
  // l1.getId(234);
  // l1.getModle("Dell Inspiron");
  // l1.getram("8 GB");

  // Laptop l2 = new Laptop();
  // l2.getId(567);
  // l2.getModle("HP Omen");
  // l2.getram('16 GB');

  l1.dispaly();
  // l2.dispaly();s
}
