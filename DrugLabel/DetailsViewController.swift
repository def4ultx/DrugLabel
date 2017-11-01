//
//  DetailsViewController.swift
//  DrugLabel
//
//  Created by Kamonwat Rojjanadechakul on 11/1/2560 BE.
//  Copyright © 2560 bally. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //var selectedDrug: Drug!
    
    var showTitle: String!
    var showDetail: String!
    var showImage: String = "1"

    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var DetailsTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Detail : ",showTitle)
        
        title = showTitle
        detailsImage.image = UIImage(named: showImage )
        titleLabel.text = showTitle
        DetailsTextView.text = showDetail
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
