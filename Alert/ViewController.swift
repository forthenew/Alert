//
//  ViewController.swift
//  Alert
//
//  Created by stam on 2020/12/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    let lampOn = UIImage(named: "lamp-on.png")
    let lampOff = UIImage(named: "lamp-off.png")
    let lampRemove = UIImage(named: "lamp-remove.png")
    
    var isLampOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = lampOn
    }

    @IBAction func btnLampOn(_ sender: Any) {
        let lampController = UIAlertController(title: "램프켜기", message: "램프를 켤까요?", preferredStyle: .alert)
        let onAction = UIAlertAction(title: "네, 켭니다.", style: .default, handler: nil)
        
        lampController.addAction(onAction)
        present(lampController, animated: true, completion: nil)
    }
    
    @IBAction func btnLampOff(_ sender: Any) {
        let lampController = UIAlertController(title: "램프끄기", message: "램프를 끌까요?", preferredStyle: .alert)
        let offAction = UIAlertAction(title: "네. 끕니다.", style: .default, handler: nil)
        lampController.addAction(offAction)
        
        present(lampController, animated: true, completion: nil)
    }
    
    @IBAction func btnLampRemove(_ sender: Any) {
        print("###btnLampRemove")
        imageView.image = lampRemove
    }
}

