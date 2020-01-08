//
//  resultViewController.swift
//  SecondKadaiApp
//
//  Created by 佐藤淳哉 on 2020/01/06.
//  Copyright © 2020 Junya.Satou. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var namae:String = "あ"
    var area:String = "え"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label.text = "こんにちは、\(namae)さん \(area)からようこそ！"
        
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
