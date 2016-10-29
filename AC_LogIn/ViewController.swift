//
//  ViewController.swift
//  AC_LogIn
//
//  Created by 洪德晟 on 2016/10/29.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 按下按鈕，存入登出的值，並present登出後畫面
    @IBAction func logOutButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(0, forKey: "checkLogIn")
        UserDefaults.standard.synchronize()
        let controller = UIStoryboard(name: "LogIn", bundle: nil).instantiateViewController(withIdentifier: "logIn")
        present(controller, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

