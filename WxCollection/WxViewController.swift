//
//  WxViewController.swift
//  WxCollection
//
//  Created by macbook on 4/3/18.
//  Copyright © 2018 Jaminya. All rights reserved.
//

import UIKit

class WxViewController: UIViewController {

    @IBOutlet weak var alertCollection: UICollectionView!
    @IBOutlet weak var cityCollection: UICollectionView!
    @IBOutlet weak var wxView: UICollectionView!
    
    let alertViewController = AlertViewController()
    let wxViewController = WxCollectionController()
    let cityCollectionController = CityCollectionController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set data source and delegate
        alertCollection.dataSource = alertViewController
        alertCollection.delegate = alertViewController
        
        cityCollection.dataSource = cityCollectionController
        cityCollection.delegate = cityCollectionController
        
        wxView.dataSource = wxViewController
        wxView.delegate = wxViewController
        
        // hide views
        alertCollection.isHidden = false
        
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
