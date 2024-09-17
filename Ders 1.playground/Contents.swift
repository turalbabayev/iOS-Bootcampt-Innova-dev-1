import UIKit


var ogrenciAd = "Tural"
var ogrenciYas = 23
var ogrenciBoy = 1.81
var ogrenciBasharf = "T"
var ogrenciDevamDurumu = true

print("Öğrenci Adı:" , ogrenciAd)
print("Öğrenci Yaşı:" , ogrenciYas)
print("Öğrenci Boyu:" ,ogrenciBoy)
print("Öğrenci BaşHarfi:" ,ogrenciBasharf)
print("Öğrenci Devam Durumu:" ,ogrenciDevamDurumu)


// sabitler - constants

var sayi = 100
print(sayi)
sayi = 300
print(sayi)


let number = 50
print(number)



// Tür Dönüşümü - Type Casting
//Sayısal to Sayısal

var i = 42
var d = 37.93
var sonuc = Double(i)
var sonuc2 = Int(d)

print(sonuc)
print(sonuc2)

// Sayısal to String

var sonuc3 = String(d)
print(sonuc3)

// sTRİNG To Sayısal

var metin = "57a"
//let sonuc4 = Int(metin)
if let sonuc5 = Int(metin){
    print(sonuc5)
} else{
    print("Donusumde Hata Olustu!")
}
    
//print(sonuc4)

// Tuples
var kisi = ("Ahmet", "Aksoy", 30)
var ad = kisi.0
