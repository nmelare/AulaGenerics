import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

let array = [1,2,3,4,5]
let element = 10
let sePertence = list(array, element: element)

let arrayA = [1,2,3,4,5,6,7]
let arrayB = [1,3,5,7,9,11]
let arrayC = [1,2,4,6,8,10]

let arraysBelong = ifBelong(arrayA, arrayB)
let arrays = plusArray(arrayA,arrayB,arrayC)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array

func list<T: Equatable> (_ array: [T], element: T ) -> Bool {
    return array.contains(element)
    }

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico

extension Array where Element: Numeric {
    func sum() -> Element {
        var sum = Element.zero
        
        for element in self {
            sum += element
        }
        return sum
    }
}
//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays

func ifBelong<B: Equatable> (_ arrayA: [B], _ arrayB: [B]) -> Int {
    var count = 0
    
    for element in arrayA {
        if list(arrayB, element: element) {
            count += 1
        }
    }
    return count
}

    //BONUS TODO: Fazer o método acima receber N arrays

func plusArray<A: Equatable> (_ firstArray: [A], _ arrays: [A]...) -> Int {
    var count = 0
    var isThere = true
    
    for element in firstArray {
        isThere = true
        for array in arrays {
            if !list(array, element: element) {
                isThere = false
                break
            }
        }
        if isThere {
            count += 1
        }
    }
    return count
}

