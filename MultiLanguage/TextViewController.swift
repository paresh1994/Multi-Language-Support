//
//  TextViewController.swift
//  MultiLanguage
//
//  Created by iDeveloper2 on 22/05/18.
//  Copyright © 2018 iDeveloper2. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var labeldate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hello !!".localiz()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss".localiz(), style: .plain, target: self, action: #selector(self.dismissView))
        
        let dateformatter = DateFormatter()
        dateformatter.locale = LanguageManger.shared.appLocale
        dateformatter.dateFormat = "EEEE"
        let date = dateformatter.string(from: Date())
        labeldate.text = date
        
    }

    @objc func dismissView() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
