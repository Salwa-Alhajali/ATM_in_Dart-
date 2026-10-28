import 'dart:io';

List<int> acseptedMonyEnterd = [200, 100, 50, 20];
int limit_in = 4000;
int limit_out = 1000;
double mony = 20.0; //shachel
//algorthems count the baper  if acsepted or not

String? input;

const double ATMFess = 0.23;
List<String> coint = ["shacel", "yoro", "dolar", "yoan"];
List<double> changeing = [1, 0.23, 0.37, 0.78];

bool validat_the_cash(int cash) {
  if (cash < 20 || cash > limit_in) return false;
  return isItAcsepted(cash);
}

bool validat_the_outMony(double cash_inShakel, int cash) {
  if (cash_inShakel > mony || cash_inShakel > limit_out) return false;
  return isItAcsepted(cash);
}

bool isItAcsepted(int cash) {
  int mod;
  for (int M in acseptedMonyEnterd) {
    mod = cash % M;
    if (mod > 20)
      continue;
    else if (mod == 0)
      return true;
  }
  return false;
}

void VlidatTheOutComAmount(int amount, int i) {
  do {
    if (validat_the_outMony(amount * changeing[i], amount)) {
      // i will try it to chakel to cke the lemet validation
      mony -= amount * changeing[i];
      print("you got your mony now you have $mony*$i ${coint[i]}");
      break;
    } else {
      print(
        "unvalid input check the amount you have $mony*$i ${coint[i]} foloo the enstruction and try agean ",
      );
      continue;
    }
  } while (true);
}

void RecoustMonyOperation(int? choice, int i) {
  do {
    print(
      "enter the amount you want to mave abeper 200 ,100,20,50 the ATM can out the lemit-$limit_out*i ${coint[i]}",
    );

    input = stdin.readLineSync();
    int? amount = int.tryParse(input!);
    if (amount != null) {
      VlidatTheOutComAmount(amount, i);
    } else {
      print("unvalid input try agean!");
      continue;
    }
  } while (true);
}

int choceCointType(int? choice) {
  print(" witch type of mony you want to get it by :");
  int i = 1;
  for (String coin in coint) {
    print("press $i to change to $coin");
    i++;
  }
  input = stdin.readLineSync();
  choice = int.tryParse(input!);
  return i--;
}

void TackeMonyOperation(int? choice) {
  //class1
  if (mony > ATMFess) {
    do {
      int i = choceCointType(choice);
      if (choice != null && choice > coint.length && choice > 0) {
        RecoustMonyOperation(choice, i); //the user aske for the mony
      } else
        print("unvalid input try agean!");
      continue;
    } while (true);
  } else
    print("you dont have enouh mony to  get mony !");
}

void valdatInoutOperaton(int amount) {
  //for class2
  do {
    if (validat_the_cash(amount)) {
      mony += amount;
      print("the amount in your acount alredy )");
      print("you have $mony shakell");
      break;
    } else {
      print("the operation is faild! check the amount  and try agen!");
      continue;
    }
  } while (true);
}

void InputmonyOperation() {
  //class2
  do {
    print(
      "enter the amount you can enterd abeper 200 ,100,20,50 the ATM acsept the lemit-$limit_in shakels",
    );
    input = stdin.readLineSync();
    int? amount = int.tryParse(input!);
    if (amount != null) {
      valdatInoutOperaton(amount);
    } else {
      print("not valid input!");
      continue;
    }
  } while (true); // emprov it
}

void main() {
  bool end = false;
  do {
    print('===============ATM==============');
    print(' enter the operation  :-');
    print(' 1- for the tacke mony ');
    print(' 2- get mony');
    input = stdin.readLineSync();
    int? choice = int.tryParse(input!);
    if (choice != null) {
      switch (choice) {
        case 1:
          TackeMonyOperation(choice);
          break;
        case 2: //add enter options in any way dolers shakell etc...
          InputmonyOperation();
        default:
      }
    }
  } while (!end);
}
