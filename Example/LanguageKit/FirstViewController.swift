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

    @IBOutlet weak var currentLanguageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Check Storyboard for IBOutlet
        
        //Example: Get a text programatically
        print("button".localized)
        
        currentLanguageLabel.text = LanguageKit.shared.currentLanguage

    }
    
    override func didUpdateLanguage() {
        //If language is updated, update the label as well
        currentLanguageLabel.text = LanguageKit.shared.currentLanguage
    }
    @IBAction func switchAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        for lang in LanguageKit.shared.allLanguages {
            alert.addAction(UIAlertAction(title: "language.name".localizedForLanguage(key: lang), style: .default, handler: { (action) in
                
                //If use in-app switching only
                LanguageKit.shared.setLanguage(language: lang)
                
                //If also use system language setting
//                LanguageKit.shared.setLanguage(language: lang, asSystemLanguage: true, completion: {(success) in
//                    print("Result: \(success)")
//                })
              
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


