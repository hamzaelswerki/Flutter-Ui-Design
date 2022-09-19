import 'package:intl/intl.dart';


String formatCurrency(num amount,{int decimalCount=0}){
      final fCurrency= NumberFormat.simpleCurrency(decimalDigits: decimalCount);
        return fCurrency.format(amount);
}