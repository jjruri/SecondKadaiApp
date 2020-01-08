//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 佐藤淳哉 on 2020/01/06.
//  Copyright © 2020 Junya.Satou. All rights reserved.
//

import UIKit

// ドラムロール用にdelegateとdatasourceを取り込む
class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
// ドラム用のせ必須項目を入れる
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return 8
    }
    

// テキストフィールドとドラムロールをアウトレット登録する
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var areadrum: UIPickerView!
    
// ドラムロール用の変数宣言をする
    var selectedarea:String = "a"

// ドラム用のリストを作成して中身を入れる
    var datasourceForarea = ["北海道","東北","関東","中部","近畿","中国","四国","九州"]
    
    
// 画面遷移時に読み込む必要のあるテキストフィールド設定とドラムロール用の設定をする
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField1.keyboardType = UIKeyboardType.namePhonePad
        textField1.placeholder = "(例)山田　太郎"
        textField1.clearButtonMode = UITextField.ViewMode.always
        
        self.areadrum.delegate = self
        self.areadrum.dataSource = self
        
    }
    
//ドラムロールの実装
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String( datasourceForarea[row] )
    }

    
//画面遷移のデータ引き渡し部分
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultbox: resultViewController = segue.destination as! resultViewController
        
        resultbox.namae = textField1.text!
        
        let resultarea: resultViewController = segue.destination as! resultViewController
        resultarea.area = datasourceForarea[self.areadrum.selectedRow(inComponent: 0) ]
    
    }

//戻るボタンの実装
    @IBAction  func unwind(_ segue:UIStoryboardSegue ) {
        
    }
    
    
}

