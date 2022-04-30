//
//  ViewController.swift
//  FilmsApp
//
//  Created by Anton on 30.03.2022.
//

import UIKit

class MainViewController: UIViewController {

   
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var filmSearchBar: UISearchBar!
    

    
    var testArray: [TestModel] = [
    TestModel(testPic: "image1", testTitle: "Фильм1", testYear: "2001", testRating: "7.1"),
    TestModel(testPic: "image2", testTitle: "Фильм2", testYear: "2011", testRating: "7.1"),
    TestModel(testPic: "image3", testTitle: "Фильм3", testYear: "2021", testRating: "7.1"),
    TestModel(testPic: "image4", testTitle: "Фильм3", testYear: "2009", testRating: "7.1"),
    TestModel(testPic: "image5", testTitle: "Фильм4", testYear: "2002", testRating: "7.1"),
    TestModel(testPic: "image6", testTitle: "Фильм5", testYear: "2005", testRating: "7.1"),
    TestModel(testPic: "image7", testTitle: "Фильм6", testYear: "2015", testRating: "7.1"),
    TestModel(testPic: "image8", testTitle: "Фильм7", testYear: "2043", testRating: "7.1"),
    TestModel(testPic: "image9", testTitle: "Фильм8", testYear: "2002", testRating: "7.1"),
    TestModel(testPic: "image10", testTitle: "Фильм9", testYear: "2008", testRating: "7.1"),
    TestModel(testPic: "image11", testTitle: "Фильм10", testYear: "2003", testRating: "7.1"),
    TestModel(testPic: "image12", testTitle: "Фильм11", testYear: "2005", testRating: "7.1"),
    TestModel(testPic: "image13", testTitle: "Фильм12", testYear: "2012", testRating: "7.1"),
    TestModel(testPic: "image14", testTitle: "Фильм13", testYear: "2016", testRating: "7.1"),
    TestModel(testPic: "image15", testTitle: "Фильм14", testYear: "2018", testRating: "7.1"),
    
    
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        filmSearchBar.delegate = self
        
        //Регистрируем XIB ячейку
        let xibCell = UINib(nibName: "FilmCollectionViewCell", bundle: nil)
        mainCollectionView.register(xibCell, forCellWithReuseIdentifier: "FilmCell") 
        mainCollectionView.reloadData()
    }


}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell else {
            
            return UICollectionViewCell()
        }
        cell.posterPreviewImageView.image = UIImage(named: testArray[indexPath.row].testPic ?? "image1")
        cell.filmTitleLabel.text = testArray[indexPath.row].testTitle
        cell.releaseYearLabel.text = testArray[indexPath.row].testYear
        cell.ratingLabel.text = testArray[indexPath.row].testRating
        
        
        
        return cell
    }
    
    
}
