// class Complex {
//   var a, b;

//   Complex() {
//     print("\nDefault Consturctor");
//   }
// //          Complex(var a, var b){
// //            this.a=a;
// //            this.b=b;
// //          }

//   void setData(var a, var b) {
//     this.a = a;
//     this.b = b;
//   }

//   void showData() {
//     print("Real : $a  Imaginary : $b\n");
//   }

//   Complex sum(Complex C) {
//     var temp = new Complex();
//     temp.a = a + C.a;
//     temp.b = b + C.b;
//     return temp;

// //        delete temp;
//   }
// }

// void main() {
//   var c1 = Complex();
//   c1.setData(2,3);

//   var c2 = Complex();
//   c2.setData(3,4);

//   var c3= Complex();
//   c3 = c1.sum(c2);
//   c3.showData();

//   var listNo = ['Raman',23,'rahul' ,23, 45];

//   listNo.add(40);
//   print("$listNo");
//   var name=[];
//   name.addAll(listNo);

//   name.insert(2, 'bhupendra');
//  print("$name");
// //   update
//   name[2]= "Anuj Shukla";
// print("$name");
//   listNo.replaceRange(0,1,[10]);
//   print("$listNo");

// name.remove('Anuj Shukla');
//   print("$name");

//   print("Lenght : ${name.length}");

//   print("Lenght : ${name.reversed}");

//   maps

//   var map_name = {
//      'name': 'Bhupendra',
//       'year of experience' : 2,
//     'rating': 3.5,
//     'Can do WFH': true
//     };

//   print("$map_name");

//   var mapName = Map();

//   mapName['Name'] = 'Bhku0';
//     mapName['no'] = '34';
//     mapName['ghb'] = true;
//   print("$mapName");

//   Exception Handeling;

//     try{
//         int x =5~/0;
//         print("x =$x");

//     }

// //   here e as a object work kar raha he jo exception return kr raha he
//   catch(e,s){
//   print("Exception: $e");
// //     print(s);
//   }
// //   finally ensures the program exicution.
//   finally{
//     print("Finally clause worked ");
//   }

//         try{
//              noCheck(12345);
//         }catch(e){
//           print('Enter a five digit no. its a invalid no.');}

//   // noCheck method defined.
//   void noCheck(var n){
//     if(n.toString().length == 5){
//           print("valid number");}
//     else
//       throw FormatException();
//   }
// }
