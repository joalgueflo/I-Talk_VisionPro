//
//  Pract6.swift
//  I-Talk_visionOS
//
//  Created by José Guerrero  on 21/03/24.
//


import RealityKit
import RealityKitContent
import SwiftUI
import AVFoundation


struct Pract6: View {
    @State var isOn = true
    @State var isCorrect1 = false
    @State var wrong1 = false
    @State var wrong2 = false
    
    var body: some View {
        ZStack{
            Color.cyan
                .opacity(0.4)
                .ignoresSafeArea()

        
        VStack{
            
            Button(action: {
                let alphabet = AVSpeechUtterance(string: isOn ? "Flower" : "Flor")
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
                    isCorrect1.toggle()
                    
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 225, height: 175)
                        .foregroundStyle(Color.green)
                    
                        .overlay(
                            VStack(spacing:-15){
                                Text("🌸")
                                    .font(.system(size:150, weight: .bold, design: .rounded))
                            }
                            
                        )
                })
                
                Button(action: {
                    
                    wrong1.toggle()
                    
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 225, height: 175)
                        .foregroundStyle(Color.green)
                        .overlay(
                            VStack(spacing:-15){
                                Text("🐶")
                                    .font(.system(size:150, weight: .bold, design: .rounded))
                                if wrong1{
                                    Text("❌")
                                }
                                
                            }
                        )
                })
                
                Button(action: {
                    
                    
                    wrong2.toggle()
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 225, height: 175)
                        .foregroundStyle(Color.green)
                        .overlay(
                            VStack(spacing:-15){
                                Text("🧢")
                                    .font(.system(size:150, weight: .bold, design: .rounded))
                                if wrong2{
                                    Text("❌")
                                }
                                
                            }
                        )
                })
                
            }
        }.navigationBarBackButtonHidden(true)
            if isCorrect1{
                NavigationLink(destination: ContentView()){
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 400, height: 350)
                        .foregroundStyle(Color.cyan)
                        .overlay(
                            VStack(){
                                Text("Congratulations!").font(.title).foregroundStyle(Color.black)
                                    .bold()
                                Text("🏆🎉")
                                    .font(.system(size:180, weight: .bold, design: .rounded))
                                
                            } //End VStack
                        )//End Overlay
                }
                
            }//End If
    }
        
        
    }
}

