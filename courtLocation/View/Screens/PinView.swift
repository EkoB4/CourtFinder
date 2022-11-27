//
//  PinView.swift
//  courtLocation
//
//  Created by VB on 18.11.2022.
//

import SwiftUI

struct PinView: View {
    var title : String
    @State var isClicked = false
    @State private var action : Int? = 0
    var body: some View {
        if !isClicked{
            return AnyView(Button(action: {
                isClicked = true
            }, label: {
                Image("paperplane")
                    .padding()
                    .frame(width: 200, height: 200, alignment: .center)
            })
            )
        }else{
            return AnyView(
                VStack{
                    NavigationLink(destination: Text("\(title)")) {
                        Image(systemName: "paperplane.circle.fill")
                    }
                    EmptyView()
                }
            )
        }
    }
}

//
