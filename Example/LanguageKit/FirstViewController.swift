//
//  ViewController.swift
//  LanguageKit
//
//  Created by Gary Law on 03/05/2018.
//  Copyright © 2018 Gary Law. All rights reserved.
//

import UIKit
import LanguageKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Check Storyboard for IBOutlet
        
        //Example: Get a text programatically
        print("button".localized)

    }
    @IBAction func switchAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        for lang in LanguageKit.shared.allLanguages {
            alert.addAction(UIAlertAction(title: "language.name".localizedForLanguage(key: lang), style: .default, handler: { (action) in
                LanguageKit.shared.setLanguage(language: lang)
                LanguageKit.shared.updateLanguage()
            }))
        }
        
        alert.addAction(UIAlertAction(title: "Cancel".localized, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


