//
//  ViewController.swift
//  PracticeiOS
//
//  Created by Hayato Takemoto on 2018/06/12.
//  Copyright © 2018年 Hayato Takemoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pageLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "画面タイトル"
        
        self.view.backgroundColor = .white
        let labelFrame = CGRect(x: 20, y: 80, width: view.bounds.size.width, height: 20)
        
        pageLabel = UILabel(frame: labelFrame)
        
        if let `pageLabel` = pageLabel {
            pageLabel.backgroundColor = .clear
            pageLabel.text = "ViewController"
            view.addSubview(pageLabel)
        }
        
        
        let nbutton = UIButton(type: .system)
        nbutton.frame = CGRect(x: 224, y: 340, width: 73, height: 44)
        nbutton.backgroundColor = .gray
        nbutton.setTitle("Next", for: .normal)
        nbutton.setTitleColor(.white, for: .normal)
        nbutton.addTarget(self, action: #selector(self.onNext(_:)), for: .touchUpInside)
        
        view.addSubview(nbutton)
        
        let rbutton = UIButton(type: .system)
        rbutton.frame = CGRect(x: 124, y: 400, width: 73, height: 44)
        rbutton.backgroundColor = .gray
        rbutton.setTitle("Remove", for: .normal)
        rbutton.setTitleColor(.white, for: .normal)
        rbutton.addTarget(self, action: #selector(self.onRemove(_:)), for: .touchUpInside)
        
        view.addSubview(rbutton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func onNext(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ViewController2", bundle: nil)
        let view2Controller = storyboard.instantiateViewController(withIdentifier: "ViewController3")
        view.addSubview(view2Controller.view)
    }
    
    @objc fileprivate func onRemove(_ sender: UIButton) {
        guard let pageLabel = pageLabel else {
            return
        }
        pageLabel.removeFromSuperview()
    }
}

