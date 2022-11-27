//
//  CourtView.swift
//  courtLocation
//
//  Created by VB on 18.11.2022.
//

import SwiftUI

struct CourtView:  View {
    @StateObject var itemModal : CourtItemModal = CourtItemModal()
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
                                Button {
                                    print("Clicked")
                                } label: {
                                    Text(item.ButtonLoc)
                                        .bold()
                                        .font(.system(size:30))
                                        .foregroundColor(.black)
                                        .background(RoundedRectangle(cornerRadius: 20)
                                                        .fill(Color.red)
                                                        .frame(width:100,height:50))

                                    
                                }.padding()
                                
                            }
                            // Spacer()
                        })
                }.foregroundColor(.white)
            }
        }
    }
}

struct CourtViewPreviews: PreviewProvider {
    static var previews: some View {
        CourtView().background(Color.black).previewLayout(.sizeThatFits)
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
