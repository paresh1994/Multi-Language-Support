//
//  ViewController.swift
//  MultiLanguage
//
//  Created by iDeveloper2 on 22/05/18.
//  Copyright © 2018 iDeveloper2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Change language".localiz()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func changeLang(_ sender: UIButton) {
        
        let selectedLang = sender.tag == 0 ? Languages.en : Languages.ar
        LanguageManger.shared.setLanguage(language: selectedLang)
        
        self.performSegue(withIdentifier: "showsegue", sender: nil)
        
    }
    

}

