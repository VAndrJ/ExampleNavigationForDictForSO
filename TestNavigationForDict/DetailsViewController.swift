//
//  DetailsViewController.swift
//  TestNavigationForDict
//
//  Created by VAndrJ on 12/11/17.
//  Copyright © 2017 VAndrJ. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var detailData: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = detailData
    }

}
