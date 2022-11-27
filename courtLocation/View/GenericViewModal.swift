//
//  GenericViewModal.swift
//  courtLocation
//
//  Created by VB on 23.11.2022.
//
import SwiftUI

struct GenericViewModal<FindLocation:View ,ContentView : View> :  View {
    @StateObject var itemModal : CourtItemModal = CourtItemModal()
    var nextView: ContentView
    var testView : FindLocation
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(itemModal.CourtDetails){ item in
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 300, height: 200, alignment: .center)
                        .overlay(VStack{
                            Text(item.courtDetailName)
                                .bold()
                                .foregroundColor(.black)
                                .font(.system(size:30))
                            VStack{
                                Text(item.courtInfo)
                                    .bold()
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    NavigationLink(destination: testView) {
                                        Text("sas")
                                            .foregroundColor(.black)
                                    }
                                    NavigationLink(destination: nextView) {
                                        Text("Test")
                                            .foregroundColor(.black)
                                    }
                            }
                            // Spacer()
                        })
                }.foregroundColor(.white)
            }
        }
    }
}

struct CourtView_Previews: PreviewProvider {
    static var previews: some View {
        GenericViewModal(nextView: ContentView(), testView: FindLocation( FirstView: CourtView(), SecondView: Extra())).background(Color.black).previewLayout(.sizeThatFits)
    }
}
/*
 struct rowLine<CourtView : View>: View{
 
 var nextView: CourtView
 var body: some View {
 NavigationView{
 NavigationLink(destination: nextView) {
 HStack {
 Text("sa")
 }
 }
 }
 }
 }
 
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 rowLine(nextView: FindLocation())
 }
 }
 */
