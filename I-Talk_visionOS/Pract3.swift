//
//  Pract3.swift
//  I-Talk_visionOS
//
//  Created by José Guerrero  on 21/03/24.
//

import RealityKit
import RealityKitContent
import SwiftUI
import AVFoundation


struct Pract3: View {
    @State var isOn = true
    @State var isCorrect1 = false
    @State var wrong1 = false
    @State var wrong2 = false
    
    var body: some View {
        
        ZStack{
            Color.red
                .opacity(0.4)
                .ignoresSafeArea()

            VStack{
                NavigationLink(destination: ContentView()){
                    Capsule()
                        .frame(width: 110, height: 90)
                        .foregroundStyle(Color.yellow)
                        .overlay(
                            Image(systemName: "arrowshape.left")
                                .foregroundColor(.white)
                                .font(.system(size:80, weight: .bold, design: .rounded))
                        )
                    
                }
                Button(action: {
                    let alphabet = AVSpeechUtterance(string: isOn ? "Tree" : "Arbol")
                    alphabet.voice = AVSpeechSynthesisVoice(language: isOn ? "en-US" : "es-LA")
                    alphabet.rate = 0.3
                    synthesizer.speak(alphabet)
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 350, height: 300)
                        .foregroundStyle(Color.gray)
                        .overlay(
                            Image(systemName: "speaker.wave.3.fill")
                                .font(.system(size:150))
                                .frame(alignment: .center)
                                .foregroundStyle(Color.white)
                        )
                })
                
                
                
                HStack{
                    
                    Button(action: {
                        
                        wrong1.toggle()
                        
                    }, label: {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 225, height: 175)
                            .foregroundStyle(Color.brown)
                        
                            .overlay(
                                VStack(spacing:-15){
                                    Text("❤️")
                                        .font(.system(size:150, weight: .bold, design: .rounded))
                                    if wrong1{
                                        Text("❌")
                                    }
                                }
                                
                            )
                    })
                    
                    Button(action: {
                        
                        isCorrect1.toggle()
                        
                    }, label: {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 225, height: 175)
                            .foregroundStyle(Color.brown)
                        
                            .overlay(
                                VStack(spacing:-15){
                                    Text("🌳")
                                        .font(.system(size:150, weight: .bold, design: .rounded))
                                    
                                }
                            )
                    })
                    
                    Button(action: {
                        
                        wrong2.toggle()
                        
                        
                    }, label: {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 225, height: 175)
                            .foregroundStyle(Color.brown)
                        
                            .overlay(
                                VStack(spacing:-15){
                                    Text("🐝")
                                        .font(.system(size:150, weight: .bold, design: .rounded))
                                    if wrong2{
                                        Text("❌")
                                    }
                                    
                                }
                            )
                    })
                    
                }
                
                if isCorrect1{
                    NavigationLink(destination: Pract4()){
                        Capsule()
                            .frame(width: 110, height: 90)
                            .foregroundStyle(Color.green)
                            .overlay(
                                Image(systemName: "arrowshape.right")
                                    .foregroundColor(.white)
                                    .font(.system(size:80, weight: .bold, design: .rounded))
                            )
                    }.padding(.top, 40)
                    
                }
                
            }.navigationBarBackButtonHidden(true)
            
        }
    }
}

