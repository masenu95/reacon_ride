import 'package:intl/intl.dart';

class FormatData{
  String formatCurrency(double currency){

    if(currency <100000){
      var f =  NumberFormat();
      return f.format(currency);
    } else{
      var f =  NumberFormat.compact();
      return f.format(currency);
    }


  }
  String capitalize(String string){
    return "${string[0].toUpperCase()}${string.substring(1).toLowerCase()}";
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}