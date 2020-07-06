import UIKit

//MARK:  학생 구조체  구조체는 값 타입

struct Student {
    var name = "민욱"
    let `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생 클래스 입니다.")
    }
    
    func selfIntroduce() {
        print("\(self.name) and \(self.class)")
    }
}

var jina: Student = Student()
jina.name = "Jina"
//jina.class = "Android" 불변이라 변경 불가능

jina.selfIntroduce()

let minsu: Student = Student()
//minsu.name = "minsu" let으로 선언하여 프로퍼티 값 변경 불가능


//MARK: 사람 클래스 클래스는 참조타입

class Person {
    var name: String = "person"
    
    func walk() {
        print("\(name)이 산책한다.")
    }
    
    static func thinkType() {
        print("type method - static") //상속해도 재정의 불가능
    }
    
    class func thinkClass() {
        print("type method - class") //재정의 가능
    }
}

var hana : Person = Person()
hana.name = "hana"

let soyun : Person = Person()
soyun.name = "soyun"   //let이어도 변경 가능


//MARK: Week 열거형은 값 타입
// 다른 언어에서는 열거형은 정수 타입으로 0, 1 시작하지만 Swift에서는 유의미한 고유의 값 but 정수의 값을 부여 가능, String도 가능
enum WeekDay{
    case Mon, Tue
    case Wen
    case Fri, Set, Sun
    
    func getToday() -> WeekDay{
        return self
    }
}


