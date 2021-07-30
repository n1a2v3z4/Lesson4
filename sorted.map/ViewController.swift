//
//  ViewController.swift
//  sorted.map
//
//  Created by Cергей Иванович on 29.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     ...Создать массив из кортежей, первый элемент в котором будет Int, а второй String. Нужно возвести все числа в квадрат, затем отфильтровать и оставить только четные числа, а в конце отсортировать по увеличению строк. То есть начальный массив кортежей должен выглядеть так
     [(1,"x"), (3,"z"), (2, "y"), (4, "a")]
     А в результате должно получиться так:
     [(16, "a"), (4, "y")]
     
     И сделайте это все как функцию, которая принимает параметр и возвращает значение
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let firstArray: [(number: Int, text: String)] = [(1, "x"), (3, "z"), (2, "p"), (18, "o"), (10, "w")]
        //        arrayOfTyplesSorted(firstArray: firstArray)
        print ("отсортированный массив - \(arrayOfTyplesSorted(firstArray: firstArray))")
        print ("отсортированный массив - \(variantTooMass(tooArray: firstArray))")
    }
    
    func arrayOfTyplesSorted (firstArray: [(number: Int, text: String)]) -> [(Int, String)]
    {
        let newarrayOfTyplesSorte = firstArray.map { (number: Int, text: String) in
            return (number*number, text)
            
        }
        
        let eventNumbersOfTyplesSorted = newarrayOfTyplesSorte.filter { (number: Int, text: String) in
            if number % 2 == 0 { return true}
            else {return false}
            //        return number % 2 == 0
        }
        
        let sortedEventNumbersOfString = eventNumbersOfTyplesSorted.sorted { ctroka1, ctroka2  in
            return ctroka1.1 < ctroka2.1
            
        }
        return sortedEventNumbersOfString
    }
    
    
    
    // 2 вариант через функции
    func variantTooMass (tooArray: [(number: Int, text: String)]) -> [(Int, String)] {
        
        var numberToo: [(Int, String)] = []
        
        for i in tooArray {
            numberToo.append((i.number*i.number, i.text))
        }
        
        var numberThree: [(Int, String)] = []
        
        for i in numberToo {
            if i.0 % 2 == 0 {
                numberThree.append((i.0, i.1))
            }
        }
        
        let numberFour = numberThree.sorted(by: { $0.1 < $1.1})
        return numberFour
    }
}

