import UIKit

//Optional -- Nullable - Nullable Safety
var message:String? = nil

message = "Hello"

if message != nil{
    print(message!)// Optional unwrap
}else {
    print("Mesaj Bos")
}

if let temp = message{ // Optional Binding
    print(temp)
}else{
    print("mesaj bos")
}


if var temp = message{ // Optional Binding
    print(temp)
}else{
    print("mesaj bos")
}







