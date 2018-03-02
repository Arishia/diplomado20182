- Numero Primo
  ```swift
  func isPrime(n: Int) -> Bool{
    for i in 2..<n {
        if n % i == 0{
            return false
        }
    }
    return true;
  }

  isPrime(n: 5)

- Serie Fibonacci
  ```swift
  func getFibonacci(_ n:Int) -> Int {
      var current:Int = 1;
      var preview:Int = 0;
      var result:Int = 1;

      if n == 0
      {
          return n;
      }

      for _ in 1...n
      {
          result = current + preview;
          preview = current;
          current = result;
      }
      print(result)
      return result;
  }

  getFibonacci(88)
  
- Palindromo
  ```swift
  func isPalindrome(_ x:String) -> Bool {
    let palindrome = x.lowercased().filter { $0 != " " };
    let y = String((palindrome).reversed());
    return palindrome == y;
  }

  isPalindrome("anita lava la tina")
  
- Función que compara dos cadenas
  ```swift
  func compare(_ x:String, _ y:String) -> Bool{
    var miDictionaryX: Dictionary<String, Int> = [:];
    
    for i in x.indices {
        let c : Character = x[i];
        let str = String(c);
        miDictionaryX[str] = miDictionaryX[str] != nil ? miDictionaryX[str]! + 1 : 1;
    }
    
    var miDictionaryY: Dictionary<String, Int> = [:];
    
    for i in y.indices {
        let c : Character = y[i];
        let str = String(c);
        miDictionaryY[str] = miDictionaryY[str] != nil ? miDictionaryY[str]! + 1 : 1;
    }
    
    return miDictionaryX == miDictionaryY;
  }

  compare("hola", "aloh")
