//
//  ContentView.swift
//  I-Talk_visionOS
//
//  Created by José Guerrero  on 21/03/24.
//

import SwiftUI
import RealityKit
import RealityKitContent


public class language: ObservableObject{
    var languageSett: Bool = true
}


struct ContentView: View {

    
   
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        NavigationStack{
            ZStack{
                Color.yellow
                    .opacity(0.4)
                    .ignoresSafeArea()
            
            VStack{
                Text("I - Talk")
                    .font(.system(size:120, weight: .bold, design: .rounded))
        
                
                
                NavigationLink(destination:alphabetPract()){
                    
                    Capsule()
                        .frame(maxWidth: .infinity, maxHeight: 190, alignment: .center)
                        .padding(.horizontal, 60)
                        .padding(.vertical,25)
                        .foregroundColor(.red)
                        .overlay(
                            HStack(){
                                Text("1.").foregroundStyle(Color.white).bold()
                                    
                                    .font(.system(size: 90))
            
                                HStack{
                                    Text("A").foregroundColor(.green).bold()
                                    Text("B").foregroundColor(.blue).bold()
                                    Text("C").foregroundColor(.yellow).bold()
                                }.font(.system(size:90))
                                    .padding(100)
                                
                            }.font(.system(size:50))
                        )
                    
                }
                
                NavigationLink(destination:WordsAndEmoji()){
                    Capsule()
                        .frame(maxWidth: .infinity, maxHeight: 190)
                        .padding(.horizontal, 60)
                        .padding(.vertical,25)
                        .foregroundColor(.green)
                        .overlay(
                            HStack{
                                Text("2.").foregroundStyle(Color.white).bold()
                                    
                                    
                                Text("😁👈🔊").foregroundColor(.white).bold()
                                    .padding(.horizontal,50)
                                    
                                
                                
                            }.font(.system(size:90))
                                .scaledToFit()
                        )
                }
                
                NavigationLink(destination:Pract1()){
                    Capsule()
                        .frame(maxWidth: .infinity, maxHeight: 190)
                        .padding(.horizontal, 60)
                        .padding(.vertical,25)
                        .foregroundColor(.blue)
                        .overlay(
                            HStack{
                                Text("3.").foregroundStyle(Color.white).bold()
                                Text("👂❓✅").foregroundColor(.white).bold()
                                .padding(.horizontal,50)
                                
                            }.font(.system(size:90))
                        )
                }
            }
        }
        }.navigationBarHidden(true)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
