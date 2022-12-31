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
                Image("Pitch1")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: UIScreen.main.bounds.width/2)
            }.padding(.vertical,50)
            VStack{
                VStack{
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed porta dolor. Etiam ultrices nunc odio, a faucibus odio suscipit eget. Nullam et venenatis mauris. Vivamus non nulla odio. Sed id varius enim. Maecenas placerat neque nibh, vel elementum felis auctor ut. Suspendisse euismod..")
                        .font(.system(size:15))
                        .bold()
                    
                }.padding()
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
                    
                }.padding(.vertical,-2)
                
                VStack{
                    
                    RoundedRectangle(cornerRadius:50).padding()
                        .frame(width:.infinity,height: UIScreen.main.bounds.height/3)
                        .foregroundColor(.gray)
                        .overlay {
                            ForEach(userView.ownerDetails){infos in
                                VStack{
                                    VStack{
                                        Text(infos.pitchName)
                                            .bold()
                                            .font(.system(.title))
                                        VStack{
                                            HStack{
                                                Text("Saha Sahibi:")
                                                Text(infos.ownerName)
                                                    .bold()
                                            }.padding(.horizontal,-120)
                                            HStack{
                                                Text("Saha Numarasi:")
                                                Text("\(infos.ownerNumber)")
                                                    .bold()
                                            }.padding()
                                            HStack{
                                                Text("Stars:")
                                                Image(systemName:"star")
                                            }.padding(.horizontal,-120)
                                        }.background(RoundedRectangle(cornerRadius: 10).fill(Color.white)).padding()
                                    }.padding(.vertical)
                                    Spacer()
                                    
                                }
                                
                            }
                        }
                }.padding(.vertical)
                
            }
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
