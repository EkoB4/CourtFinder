//
//  ItemModal.swift
//  courtLocation
//
//  Created by VB on 18.11.2022.
//

import Foundation
class CourtItemModal : ObservableObject{
    init(){
        CourtItems = LocationModal.annonitions
        CourtDetails = LocationInfos.details
    }
    @Published var CourtItems : [LocationModal]
    @Published var CourtDetails : [LocationInfos]

}
