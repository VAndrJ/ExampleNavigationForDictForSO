//
//  ViewController.swift
//  TestNavigationForDict
//
//  Created by VAndrJ on 12/11/17.
//  Copyright © 2017 VAndrJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ViewControllerToData",
            let controller = segue.destination as? DataViewController {
            controller.data = ["Test": ["Test1": ["Test2": ["Test3": "Result"]]]] // Передаем данные. Для примера вот такой Dictionary
        }
    }

}

