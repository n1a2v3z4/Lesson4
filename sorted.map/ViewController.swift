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
        var firstArray: [(number: Int, text: String)] = [(1, "x"), (3, "z"), (2, "p"), (18, "o"), (10, "y")]
        //        arrayOfTyplesSorted(firstArray: firstArray)
        print ( arrayOfTyplesSorted(firstArray: firstArray))
    }
    
    func arrayOfTyplesSorted (firstArray: [(number: Int, text: String)]) -> [(number: Int, text: String)]
    {
        let newarrayOfTyplesSorte = firstArray.map { (number: Int, text: String) in
            return (number*number, text)
        }
        
        let eventNumbersOfTyplesSorted = newarrayOfTyplesSorte.filter { (number: Int, text: String) in
            if number % 2 == 0 {
                return true}
            else
            {return false}
        }
        
        let sortedEventNumbersOfString = eventNumbersOfTyplesSorted.sorted { zislo, ctroka  in
            return zislo.1 > ctroka.1
        }
        return sortedEventNumbersOfString
    }
}
        





//               var newEvenNumbersOfTyplesSorted: [(number: Int, text: String)]
//
//        var evenNumbersOfTyplesSorted = newarrayOfTyplesSorte.map { (number: Int, text: String) -> [(number: Int, text: String)] in
//            if number % 2 == 0 {
//                newEvenNumbersOfTyplesSorted.append((number, text))
//            }
//
//            return newEvenNumbersOfTyplesSorted }
//
//
//    }
//       var evenNumbersOfTyplesSorted = newarrayOfTyplesSorte.sorted { previosElement, nextElement -> Bool in
//        if previosElement.0 % 2 == 0 {
//                return true
//        } else {
//            return false
//        }
//        }
        
        
//        return evenNumbersOfTyplesSorted
//        return newarrayOfTyplesSorte
