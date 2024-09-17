import UIKit

class Products {
    var id: Int?
    var name:String?
    var price:Int?
    
    init(id: Int? = nil, name: String? = nil, price: Int? = nil) { // Constructor
        self.id = id
        self.name = name
        self.price = price
    } // Shadowing
    
    func ReadData(){
        print("=====================")
        print("Id   : \(id!)")
        print("Name : \(name!)")
        print("Price: \(price!)$")
    }
    //Self - Bulundugu Sinifi Temsil Eder
    //Super: Kalitim varsa bir ust sinifi temsil eder
    
    func updateData(price: Int){ // Side Effect
        self.price = price
    }
}

let product1 = Products()
product1.id = 1
product1.name = "TV"
product1.price = 12000


//Read Value

product1.ReadData()


let product2 = Products()

product2.id = 2
product2.name = "Saat"
product2.price = 5670

//Read Value

product2.ReadData()


let product3 = Products()
product3.id = 3
product3.name = "Ring"
product3.price = 12340


product3.ReadData()

let product4 = Products(id: 4, name: "TV+", price: 4500)
product4.ReadData()

//Functions
//Void


class Functions{
    
    func Selamla(){
        print("\nMerhaba")
    }
    
    func Selamla2() -> String{
        let result = "Selam"
        return result
    }
    
    func sum(num1: Int, num2: Int)->Int{
        return num1 + num2
    }
    
    
    func sum(num1: Int, num2: Int,num3:Int)->Int{ // Overloading
        return num1 + num2 + num3
    }
    
}

let f = Functions()
f.Selamla()
let result = f.Selamla2()
print(result)


let sumLet = Functions().sum(num1: 5, num2: 9)
print(sumLet)


//Static Kullanimi
class ClassA{
    static var x = 10
    
    static func metod(){
        print("Metod Calisti")
    }
}

let a = ClassA()
//print(a.x)
//print(a.metod())

//Virtual Object
//print(ClassA().x)
//print(ClassA().metod())

print(ClassA.x)
print(ClassA.metod())


//Enum - Enumuration
enum Boyut{
    case small
    case medium
    case large
    
}

func price(qty: Int, boyut: Boyut) {
    switch boyut {
    case .small : print("Ucret: \(qty*450)")
    case .medium : print("Ucret: \(qty*470)")
    case .large : print("Ucret: \(qty*490)")
    }
}

price(qty: 2, boyut: .small)


//Kalitim - iNHERTANCE - Miras

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi: Int?
    
    init(kuleSayisi: Int,pencereSayisi: Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: 10)
    }
}

class Villa:Ev{
    var garajVarmi:Bool?
    
    init(garajVarmi: Bool, pencereSayisi: Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: 50)
    }
}


//Override

class Hayvan{
    func sesCikar(){
        print("Sesim Yok")
    }
}

class Memeli:Hayvan{
    
}

class Kedi:Memeli{
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek:Memeli{
    override func sesCikar() {
        print("Hav Hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar()//Kalitim yok, kendi methoduna erisiyor.
memeli.sesCikar()//Kalitim var, hayvan nesnesinin methoduna erisiyor
kedi.sesCikar()//Kalitim var, kendi methoduna erisiyor
kopek.sesCikar()//Kalitim var, kendi methoduna erisiyor

//Protocol
protocol myProtocol {
    var variable: Int {get set}
    
    func metod()
    func metod2() -> String
}

class MyClass:myProtocol{
    var variable: Int = 10
    
    
    func metod() {
        print("Method 1 Calisti")
    }
    
    func metod2() -> String {
        return "Metod 2 Calisti"
    }
    
    
}

//Closure
let ifade = {
    print("Merhaba")
}

ifade()
