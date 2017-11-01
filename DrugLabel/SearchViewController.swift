//
//  SearchViewController.swift
//  DrugLabel
//
//  Created by Kamonwat Rojjanadechakul on 11/1/2560 BE.
//  Copyright © 2560 bally. All rights reserved.
//

import UIKit

struct Drug {
    var title: String
    var detail: String
}
var drugData: [Drug] = []

var selectedDrug: String!
var selectedDetails:String = ""

var Drug1 = Drug(title: "1", detail: "oneoneoneoneoneoneoneoneoneoneoneoneoneone")
var Drug2 = Drug(title: "2", detail: "twotwotwotwotwotwotwotwotwotwotwotwotwotwo")
var Drug3 = Drug(title: "3", detail: "threethreethreethreethreethreethreethree")
var Drug4 = Drug(title: "4", detail: "fourfourfourfourfourfourfourfourfourfour")
var Drug5 = Drug(title: "5", detail: "fivefivefivefivefivefivefivefivefivefive")


class SearchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drugData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let thisDrug = drugData[indexPath.row]
        cell.myImage.image = UIImage(named: thisDrug.title)
        cell.myTitle.text = thisDrug.title
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let cell = collectionView.cellForItem(at: indexPath)
//
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: nil, animations: ({
//            cell?.frame = collectionView.bounds
//            collectionView.isScrollEnabled = false
//            cell?.subviews.bringSubView(toFront: cell!)
//        })
//        //selectedDrug = array[indexPath.row]
//        //selectedDetails = details[indexPath.row]
//            completion: performSegue(withIdentifier: "segue", sender: indexPath)
//    }
    
/*
    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
//        guard let selectedIndexPath = sender as? NSIndexPath,let DetailsVC = segue.destination as! DetailsViewController else { return }
//        print(selectedIndexPath)
        
//        let selectedPost = posts[selectedIndexPath.row]
//        detailsVC.post = selectedPost
//        detailsVC.myId = self.myId!
//        detailsVC.indexNum = selectedIndexPath
        let DetailsViewController = segue.destination as! DetailsViewController
        
        //DetailsViewController.image = selectedDrug
        DetailsViewController.drugTitle = "hello"
        //DetailsViewController.details = selectedDetails

    }
 */
    func drugAtIndexPath(_ indexPath: IndexPath) -> Drug {
        return drugData[indexPath.item]
    }
    
    func selectDrug(_ indexPath: IndexPath) -> String {
        let thisDrug = drugData[indexPath.row]
        selectedDrug = thisDrug.title
        print("M1 = " ,selectedDrug)
        return selectedDrug
    }
    
    func selectDetail(_ indexPath: IndexPath) -> String {
        let thisDrug = drugData[indexPath.row]
        selectedDetails = thisDrug.detail
        print("M2 = ",selectedDetails)
        return selectedDetails
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        selectDrug(indexPath)
        selectDetail(indexPath)
        //selectedDrug = drugAtIndexPath(indexPath: indexPath)
        //let destinationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailVC") as! DetailsViewController

        print(">>>",selectedDrug)
//        destinationVC.showTitle = selectedDrug
//        destinationVC.showDetail = selectedDetails
        //navigationController?.pushViewController(destinationVC, animated: true)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        drugData.append(Drug1)
        drugData.append(Drug2)
        drugData.append(Drug3)
        drugData.append(Drug4)
        drugData.append(Drug5)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let DetailsViewController = segue.destination as! DetailsViewController

        print("prepare = " ,selectedDrug)
        DetailsViewController.showTitle = selectedDrug
        //DetailsViewController.showImage = selectedDrug
        DetailsViewController.showDetail = selectedDetails

    }
    

}
