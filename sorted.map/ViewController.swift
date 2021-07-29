//
//  ViewController.swift
//  sorted.map
//
//  Created by Cергей Иванович on 29.07.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var firstArray: [(number: Int, text: String)] = [(1, "x"), (3, "z"), (2, "p"), (18, "zz"), (10, "XX")]
//        arrayOfTyplesSorted(firstArray: firstArray)
      print ( arrayOfTyplesSorted(firstArray: [(1, "zzz"), (3, "d")]))
    }
    
 /*
    ...Создать массив из кортежей, первый элемент в котором будет Int, а второй String. Нужно возвести все числа в квадрат, затем отфильтровать и оставить только четные числа, а в конце отсортировать по увеличению строк. То есть начальный массив кортежей должен выглядеть так
    [(1,"x"), (3,"z"), (2, "y"), (4, "a")]
    А в результате должно получиться так:
    [(16, "a"), (4, "y")]

    И сделайте это все как функцию, которая принимает параметр и возвращает значение
 */
    
    func arrayOfTyplesSorted (firstArray: [(number: Int, element: String)]) -> [(number: Int, element: String)]
    {
        var newarrayOfTyplesSorte = firstArray
        return newarrayOfTyplesSorte
        
    }
        
    }
    
    





