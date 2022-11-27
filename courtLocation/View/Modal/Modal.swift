//
//  Modal.swift
//  courtLocation
//
//  Created by VB on 17.11.2022.
//

import Foundation
import CoreLocation
import SwiftUI

struct LocationModal : Identifiable{
    var name : String
    let id = UUID()
    let coordinates : CLLocationCoordinate2D
}
extension LocationModal{
   static let annonitions = [
        LocationModal(name: "saas Halisaha", coordinates: CLLocationCoordinate2D(latitude: 40.895472, longitude: 29.218077)),
        LocationModal(name: "Arena Halisaha", coordinates: CLLocationCoordinate2D(latitude: 40.895492, longitude: 29.2114841))]
}
struct LocationInfos : Identifiable{
    var courtDetailName : String
    var courtInfo : String
    var ButtonLoc : String
    let id = UUID()
}
extension LocationInfos{
    static let details = [LocationInfos(courtDetailName: "Topselvi Halisaha",courtInfo: "sldkmflsdmflsdkmflksdf",ButtonLoc: "sa"),LocationInfos(courtDetailName: "Saas halisaha",courtInfo: "SDLFMLDSMFLSDKF",ButtonLoc: "as")]
}
/*Neighbourhood(name: "Topselvi Halisaha", coordinates: CLLocationCoordinate2D(latitude: 40.895472, longitude: 29.218077)),
 Neighbourhood(name: "Arena Halisaha", coordinates: CLLocationCoordinate2D(latitude: 40.895492, longitude: 29.2114841))]*/
