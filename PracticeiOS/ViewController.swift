//
//  ViewController.swift
//  PracticeiOS
//
//  Created by Hayato Takemoto on 2018/06/12.
//  Copyright © 2018年 Hayato Takemoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "画面タイトル"
        
        view.backgroundColor = .white
        
        let pageLabel = UILabel(frame: CGRect(x: 20, y: 80, width: view.bounds.size.width, height: 20))
        pageLabel.backgroundColor = .red
        pageLabel.text = "ViewController"
        self.view.addSubview(pageLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

