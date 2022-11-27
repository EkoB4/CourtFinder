//
//  FindLocation.swift
//  courtLocation
//
//  Created by VB on 17.11.2022.
//

import SwiftUI
import CoreLocation
import MapKit
struct FindLocation<CourtView : View, GenericViewModal : View>: View {
    @StateObject var Vm : CourtItemModal = CourtItemModal()
    var FirstView : CourtView
    var SecondView : GenericViewModal
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.8992761, longitude: 29.2037091), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Map(coordinateRegion: $region, annotationItems: Vm.CourtItems) {
                        (annonitions) -> MapAnnotation<PinView> in MapAnnotation(coordinate:annonitions.coordinates) {
                            PinView(title: annonitions.name)
                        }
                    }.frame(width: UIScreen.main.bounds.width*1.2, height: 650).ignoresSafeArea()
                    Spacer(minLength: 10)
                }
                ScrollView(.horizontal){
                    HStack{
                        HStack{
                            NavigationLink(destination: {
                                FirstView
                            }, label: {
                                RoundedRectangle(cornerRadius: 20).frame(width:400,height: 180).foregroundColor(.black)
                                    .overlay(
                                        VStack{
                                            VStack{
                                                Text("asdasas")
                                                    .font(.system(size:30).bold())
                                                    .foregroundColor(.white).background(RoundedRectangle(cornerRadius: 10).fill(Color.red).frame(width:150,height: 40))
                                            }.offset(y:50)})
                            })
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 20).frame(width:400,height: 180).foregroundColor(.black)
                                .overlay{
                                    NavigationLink(destination: {
                                        SecondView
                                    }, label: {
                                        Text("as").font(.system(size: 30).bold())
                                            .foregroundColor(.white).background(RoundedRectangle(cornerRadius: 10).fill(Color.red).frame(width:120,height: 80))
                                        
                                    })
                                }
                        }
                    }.padding(.horizontal,2)
                    Spacer(minLength: 60)
                }
            }
        }
    }
}
struct FindLocation_Previews: PreviewProvider {
    static var previews: some View {
        FindLocation(FirstView: CourtView(),SecondView: Extra())
    }
}
