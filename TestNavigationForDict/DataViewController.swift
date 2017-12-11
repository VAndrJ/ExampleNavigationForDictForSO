//
//  DataViewController.swift
//  TestNavigationForDict
//
//  Created by VAndrJ on 12/11/17.
//  Copyright © 2017 VAndrJ. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var data: [String: Any]?

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data?.description
    }

    // Проверка куда переходить и можно ли
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "DataToData",
            let dataKey = data?.keys.first, // Замените на свои данные
            let _ = data?[dataKey] as? [String: Any] {
            return true
        } else if identifier == "DataToDetails" {
            return true
        }
        performSegue(withIdentifier: "DataToDetails", sender: nil) // Если последний уровень вложенности, то переходим на подробности
        return false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataToData",
            let dataKey = data?.keys.first, // Замените на свои данные
            let dataToPass = data?[dataKey] as? [String: Any],
            let controller = segue.destination as? DataViewController {
            controller.data = dataToPass 
        } else if segue.identifier == "DataToDetails",
            let dataKey = data?.keys.first,
            let dataToPass = data?[dataKey] as? String,
            let controller = segue.destination as? DetailsViewController {
            controller.detailData = dataToPass
        }
    }
}
