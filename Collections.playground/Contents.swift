import UIKit

var numberArr = [Int]()

var fruitArr = [String]()

fruitArr.append("Apple")// 0. index
fruitArr.append("Chery")// 1. index
fruitArr.append("Banana")// 2. index

print(fruitArr)

fruitArr[1] = "New Chery"

print(fruitArr)

fruitArr.insert("Portogal", at: 1)
print(fruitArr)

print("Size", fruitArr.count)
print("Search: \(fruitArr.contains("Banana"))")

//Nesne Tabanli
class Foods{
    var id: Int?
    var name: String?
    var price: Int?
    
    init(id: Int, name: String, price: Int) {
        self.id = id
        self.name = name
        self.price = price
    }
}

let f1 = Foods(id: 1, name: "Pasta", price: 200)
let f2 = Foods(id: 2, name: "Pilav", price: 85)
let f3 = Foods(id: 3, name: "Kavurma", price: 300)

var foodArr = [Foods]()

foodArr.append(f1)
foodArr.append(f2)
foodArr.append(f3)

for food in foodArr{
    print("---------------")
    print("Id: \(food.id!)")
    print("Ad: \(food.name!)")
    print("Fiyat: \(food.price!)₺")
}


//Siralama - Sorting
print("Fiyata Göre Azalan")
let sorting_1 = foodArr.sorted(by: { $0.price! > $1.price! })

for food in sorting_1{
    print("---------------")
    print("Id: \(food.id!)")
    print("Ad: \(food.name!)")
    print("Fiyat: \(food.price!)₺")
}

print("\nFiltreleme ")

//Filtreleme1
let filter1 = foodArr.filter({ $0.price! > 100 && $0.price! < 250 })


for food in filter1{
    print("---------------")
    print("Id: \(food.id!)")
    print("Ad: \(food.name!)")
    print("Fiyat: \(food.price!)₺")
}


print("\nFiltrelem2 ")

//Filtreleme1
let filter2 = foodArr.filter({ $0.name!.contains("avu") })


for food in filter2{
    print("---------------")
    print("Id: \(food.id!)")
    print("Ad: \(food.name!)")
    print("Fiyat: \(food.price!)₺")
}


//Set

print("\nSetler")
var numSet = Set<Int>()
var fruitSet = Set<String>()

fruitSet.insert("Kiraz")
fruitSet.insert("Elma")
fruitSet.insert("Muz")

print(fruitSet)

fruitSet.insert("Amasya Elma")
print(fruitSet)

print("Boyut: \(fruitSet.count)")

for (index,fruit) in fruitSet.enumerated() {
    print("\(index) -> Sonuc: \(fruit)")
}

//Guard -- if yapisinin tersi false durumunda calisan bir yapi

func greeting(str: String){
    if str == "Ahmet"{
        print("Merhaba Ahmet")
    }else{
        print("Taninmayan Kisi")
    }
}

func greeting2(str: String){
    guard str == "Ahmet" else {
        print("Taninmayan Kisi")
        return
    }
    print("Merhaba Ahmet")
}

greeting(str: "Ahmet")
greeting2(str: "Ahemt")

func changeCapital(str: String?){
    if let temp = str{
        print("sonuc: \(temp.uppercased())")
        
    }else{
        print("Icerik Bos")
    }
}

func changeCapital2(str: String?){
    guard let temp = str else {
        print("Icerik Bos")
        return
    }
    print("sonuc: \(temp.uppercased())")
}

changeCapital(str: "Merhaba")
changeCapital2(str: nil)


//Try Catch

