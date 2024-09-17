import UIKit

// if statement - control flow
var age = 23
var name = "Tural"

if age >= 18 {
    print("Resitsiniz")
} else{
    print("Resit Degilsiniz")
}

if name == "Tural" {
    print("Merhaba, Ahmet")
} else{
    print("Taninmayan Kisi")
}


var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hos Geldiniz")
} else{
    print("Hatali Giris")
}

var numara = 100

if numara == 100  || numara == 200{
    print("Numara 100 veya 200")
}else{
    print("Nuamra 100 veya 200 degildir")
}


var result = 2

switch result{
case 1: print("Sonuc 1")
case 2: print("Sonuc 2")
case 3: print("Sonuc 3")
case 4: print("Sonuc 4")
default: print("There is no result")
}

//Loops

for i in 1..<4{
    print(i)
}

for i in stride(from: 10, through: 20, by: 5){
    print(i)
}

for i in stride(from: 20, through: 10, by: -5){
    print(i)
}


var counter = 1
while counter<=3{
    print(counter)
    counter += 1
}


for i in 1...5{
    if i == 3{
        break
    }
    print(i)
}

for i in 1...5{
    if i == 3{
        continue
    }
    print(i)
}
