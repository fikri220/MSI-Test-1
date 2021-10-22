//
//  ViewController.swift
//  MSI Test 1
//
//  Created by Fikri Ihsan on 21/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mTxtAngka: UITextField!
    @IBOutlet weak var mLblResult: UILabel!
    @IBOutlet weak var mBtnSubmit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onClikedSubmit(_ sender: Any) {
        let input = mTxtAngka.text
        if let input = input {
            let hasil = perkalian(angka: Int(input)!)
            mLblResult.text = String(hasil)
        }
        
        
        
        
    }
    
    func perkalian(angka : Int)->Int{
        
        var counter = angka
        var result = 1
        
        for _ in 1...angka {
            
            result *= counter
            counter-=1
            
            
        }
        
        return result
    }
    
}

