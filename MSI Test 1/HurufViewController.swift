//
//  HurufViewController.swift
//  MSI Test 1
//
//  Created by Fikri Ihsan on 21/10/21.
//

import UIKit

class HurufViewController: UIViewController {

    @IBOutlet weak var mTxtHuruf: UITextField!
    @IBOutlet weak var mLblResult: UILabel!
    @IBOutlet weak var mBtnSubmit: UIButton!
    
    var inputArr : [String.Element] = []
    var container : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func onClickedSubmit(_ sender: Any) {
        hurufBerulang()
    }
    
    func hurufBerulang(){
        container = []
        let input = mTxtHuruf.text!
        inputArr = Array(input)
        var counter : [Int] = []
        for n in inputArr{
            //let index : Int?
            let index = container.firstIndex(of: String(n))
            if index == nil{
                container.append(String(n))
                counter.append(1)
            }else{
                let current = counter[index!]
                counter[index!] = current+1
                //counter.insert(current+1, at: index!)
            }
            
        }
        
        //find(counter: counter)
        mLblResult.text = find(counter: counter)
        print(find(counter: counter))
    }
    
    func find(counter : [Int]) -> String{
        var con = 0
        var index = 0
        var resulltDex = 0
        for c in counter {
            
            if con<c {
                con = c
                resulltDex = index
            }
            
            index+=1
        }
        
        return container[resulltDex]
    }
    
  

}
