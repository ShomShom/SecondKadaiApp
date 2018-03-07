//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Sho Miyashita on 2018/03/07.
//  Copyright © 2018年 ShomShom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var str = "???"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var InputName: UITextField!
    @IBAction func confirm(_ sender: Any) {
        str = InputName.text!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnAmeにstrを代入して渡す
        resultViewController.nAme = str
        
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}

