effect suicidal{
  fun print_me(s:string) : ()
}

val life_lover_handler = handler {
  return   x -> [x]
  print_me(s:string) -> {
    println(s)
    resume(lifesGood())
  }
}

val suicidal_handler = handler {
  return   x -> [x]
  print_me(s:string) -> {
    println(s)
    resume(randomWay())
  }
}

fun lifesGood() : <console> () {
  return println("Life's good, don't waste it (:")
}

fun randomWay() : <console, ndet> (){
  val x = random-int()

  if (x < 3000000000000000){
    return println("Kill youself: by putting 5 years of your life programming in Java")
  }

  if (x > 3000000000000000 && x < 5000000000000000) {
    return println("Kill youself: with a spoon")
  }

  if (x > 7000000000000000 && x < 9000000000000000) {
    return println("Kill youself: with your cellphone so far up in your butt you can't even breath")
  }

  println("Kill youself: with another knife :-)")
}

fun extensive_calculation(x1:int, x2:int) : <console, suicidal> (){
  print_me("hey, guys! Our value is: ")
  println(x1+x2)
}

fun main() {
  suicidal_handler {
    extensive_calculation(5, 10)
    extensive_calculation(10, 4)
    extensive_calculation(20, 30)
  }
  
  life_lover_handler {
    extensive_calculation(5, 10)
    extensive_calculation(10, 4)
    extensive_calculation(20, 30)
  }
}
