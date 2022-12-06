//
//  Extra.swift
//  courtLocation
//
//  Created by Ekin Bacik on 27.11.2022.
//

import SwiftUI

struct Extra: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ArenaView : View {
    @StateObject var userView : CourtItemModal = CourtItemModal()
    var body: some View {
        VStack{
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200,height: 200, alignment: .center)
            }.padding(.vertical,50)
            VStack{
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed porta dolor. Etiam ultrices nunc odio, a faucibus odio suscipit eget. Nullam et venenatis mauris. Vivamus non nulla odio. Sed id varius enim. Maecenas placerat neque nibh, vel elementum felis auctor ut. Suspendisse euismod..")
                    .font(.system(size:15))
                    .bold()
                    .padding()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(UserComments.userFeedback){item in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.black)
                                .frame(width:200,height: 120)
                                .overlay {
                                    VStack{
                                        VStack{
                                            Text(item.userName)
                                                .foregroundColor(.black)
                                                .bold()
                                                .font(.system(size:20))
                                                .padding(.vertical,10)
                                                .frame(width:130)
                                            HStack{
                                                Text(item.UserComment)
                                                    .foregroundColor(.black)
                                                    .font(.system(size:10)
                                                        .bold())
                                            }
                                        }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white)
                                            .frame(width: 140,height: 80))
                                    }
                                }
                        }
                    }.padding(.horizontal,5)
                    
                }.padding(.vertical)
            }
            Spacer(minLength: UIScreen.main.bounds.height*0.1)
        }
    }
}

struct TopselviView : View{
    var body: some View{
        VStack{
            Text("This Screen will Show topselvi")
        }
    }
}
struct Extra_Previews: PreviewProvider {
    static var previews: some View {
        ArenaView()
    }
}
