//
//  ViewController.swift
//  D03swift_cal
//
//  Created by 20141105043dj on 16/6/27.
//  Copyright © 2016年 20141105043dj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var display: UITextField!
    
    var flag = 0
    var temp = 0.0
    @IBAction func add(sender: AnyObject) {
        if flag == 0 {
            temp = (Double)(display.text!)!
            display.text = ""
            flag = 1
        }
        flag = 1
    }
    @IBAction func sub(sender: AnyObject) {
        if flag == 0 {
           temp = (Double)(display.text!)!
            display.text = ""
            flag = 2
        }
        flag = 2
    }
    @IBAction func mul(sender: AnyObject) {
        if flag == 0 {
            temp = (Double)(display.text!)!
            display.text = ""
            flag = 3
        }
        flag = 3
    }
    @IBAction func div(sender: AnyObject) {
        if flag == 0 {
            temp = (Double)(display.text!)!
            display.text = ""
            flag = 4
        }
        flag = 4
    }
    @IBAction func calculator(sender: AnyObject) {
        switch flag {
        case 1:
            temp = temp+(Double)(display.text!)!
            display.text = "\(temp)"
            break
        case 2:
            temp = temp-(Double)(display.text!)!
            display.text = "\(temp)"
            break
        case 3:
            temp = temp*(Double)(display.text!)!
            display.text = "\(temp)"
            break
        case 4:
            if (Double)(display.text!) == 0 {
                let alertView = UIAlertView()
                alertView.title = "系统提示"
                alertView.message = "0不可以作除数"
                alertView.addButtonWithTitle("确认")
                alertView.show()
            }
            else {
                temp = temp/(Double)(display.text!)!
                display.text = "\(temp)"
            }
            break
        default:
            break
        }
    }
    @IBAction func clear(sender: AnyObject) {
        temp = 0
        display.text = ""
        flag = 0
    }
    @IBAction func zero(sender: AnyObject) {
        display.text = display.text! + "0"
    }
    @IBAction func one(sender: AnyObject) {
        display.text = display.text! + "1"
    }
    @IBAction func two(sender: AnyObject) {
        display.text = display.text! + "2"
    }
    @IBAction func three(sender: AnyObject) {
        display.text = display.text! + "3"
    }
    @IBAction func four(sender: AnyObject) {
        display.text = display.text! + "4"
    }
    @IBAction func five(sender: AnyObject) {
        display.text = display.text! + "5"
    }
    @IBAction func six(sender: AnyObject) {
        display.text = display.text! + "6"
    }
    @IBAction func seven(sender: AnyObject) {
        display.text = display.text! + "7"
    }
    @IBAction func eight(sender: AnyObject) {
        display.text = display.text! + "8"
    }
    @IBAction func nine(sender: AnyObject) {
        display.text = display.text! + "9"
    }


}

