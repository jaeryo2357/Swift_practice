import UIKit


//dump 클래스 프로퍼티까지 모두 출력

let numberOne : Int = 123
let numberTwo : Double = 123
let string: String = "A"

let value = "A"

type(of: value)
// String : type

//배열 : 순서가 존재하는 리스트

var arr : Array<Int> = Array<Int>()
// 동일한 표현
//let arr : Array<Int> = [Int]()
//let arr2 : [Int] = []

arr.append(100)
arr.append(1)
//인덱스로 접근
arr[0] = 99

//다양한 삭제 함수
arr.remove(at: 0) // 인데스로 삭제
arr.removeLast()
arr.removeAll()

let arr2 : [Int] = []
//let으로 선언하면 배열 안 요소 변경 불가능

//딕셔너리 : 키와 값 쌍으로 이루어진 리스트

var dictionary : Dictionary<String, Any> = Dictionary<String, Any>()
// 동일한 표현
//var dictionary2 : Dictionary<String, Any> = [String : Any]()
//var dictionary2 : Dictionary<String, Any> = [:]
//var dictionary2 : [String:Any] = [:]

//add or put 함수가 없다
dictionary["some"] = 100

//print(dictionary["some"]) print = Optional(100)

//삭제 함수 or 직접 접근
dictionary.removeValue(forKey: "some")
//dictionary["some"] = nil

//switch

let some = 50

switch (some) {

case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 50:
    print("50")
default:
    print("default가 무조건 있어야한다.")
}

//옵셔널 추출

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//옵셔널 바인딩 ,로 여러개 동시 선언가능 단 모두 nil이 아니여야 if 문 실행
if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName : String? = nil

//if let name: String = myName, let youName: String = yourName {
//
//}

//강제추출은 오류를 발생할 가능성이 많으므로 사용자제
printName(myName!) //런타임 오류 발생


