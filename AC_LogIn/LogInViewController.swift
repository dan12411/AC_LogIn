//
//  LogInViewController.swift
//  AC_LogIn
//
//  Created by 洪德晟 on 2016/10/29.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    // 按下按鈕，存入登入的值，並present登入後畫面
    @IBAction func logInButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(1, forKey: "checkLogIn")
        UserDefaults.standard.synchronize()
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab")
        present(controller, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.image = UIImage(named: "pic1")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
