//
//  JSONModel.swift
//  FilmsApp
//
//  Created by Anton on 30.03.2022.
//

import Foundation

class JSONModel:Codable {
    var original_title:String?
    var poster_path:String?
    var release_date:String?
    var overview:String?
    var vote_average:Double?
    var backdrop_path:String?
    
}

class TestModel {
    var testPic:String?
    var testTitle:String?
    var testYear:String?
    var testRating:String?
    init(testPic:String?, testTitle:String?, testYear:String?, testRating:String?){
    self.testPic = testPic
    self.testTitle = testTitle
    self.testYear = testYear
    self.testRating = testRating
    }
}
