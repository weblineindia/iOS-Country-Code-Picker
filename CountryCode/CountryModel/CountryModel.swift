//
//  CountryModel.swift
//  CountryCode
//
//  Created by Created by WeblineIndia  on 01/07/20.
//  Copyright © 2020 WeblineIndia . All rights reserved.
//

import Foundation

class CountryModel{
    var countryCode: String?
    var countryName: String?
    var countryShortName: String?
    var countryFlag : String?
}

class CountryListModel{
    var country: [CountryModel]?
    
    init(_ data: [JSON]) {
        country = [CountryModel]()
        for dt in data {
            let ctyInfo = CountryModel()
            ctyInfo.countryName = dt["name"].stringValue
            ctyInfo.countryCode = dt["dial_code"].stringValue
            ctyInfo.countryShortName = dt["code"].stringValue
            ctyInfo.countryFlag = dt["flag"].stringValue
            country?.append(ctyInfo)
        }
    }
}
