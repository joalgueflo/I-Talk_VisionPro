//
//  WordsAndEmoji.swift
//  I-Talk_visionOS
//
//  Created by José Guerrero  on 21/03/24.
//


import SwiftUI
import RealityKit
import RealityKitContent
import SwiftUI
import AVFoundation

let synthesizer = AVSpeechSynthesizer()

struct WordsAndEmoji: View {
    //@State var isOn = true
    @ObservedObject var toggle = language()
    
    var body: some View {
        
            ZStack{
                Color.green
                    .opacity(0.4)
                    .ignoresSafeArea()

                ScrollView{
                VStack(spacing: 60){
                    VStack(spacing:-30){
                        Toggle(isOn: $toggle.languageSett) {
                            HStack{
                                Text("ES - EN")
                                Image(systemName: "globe")
                            }
                        }.padding(.horizontal, 250).padding(.vertical,40)
                        
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
                    }.navigationBarBackButtonHidden(true)
                        .padding(.vertical, -40)
                    HStack(spacing: 20){
                        //Button for Car
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Car" : "Carro")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.green)
                            
                            
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("🚗")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Car" : "Carro")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        //Button for tree
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Tree" : "Arbol")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.mint)
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("🌳")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Tree" : "Arbol")
                                            .foregroundColor(.white)
                                        
                                    }
                                )
                        })
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Dog" : "Perro")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.indigo)
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("🐶")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Dog" : "Perro")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                    }
                    
                    HStack(spacing: 20){
                        //Heart button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Heart" : "Corazón")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color(red: 0.25, green: 0.88, blue: 0.82))
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("❤️")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Heart" : "Corazón")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        //Bee Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Bee" : "Abeja")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.orange)
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("🐝")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Bee" : "Abeja")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        //Flower Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Flower" : "Flor")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color(red: 1.0, green: 0.8, blue: 0.4))
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("🌸")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Flower" : "Flor")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        
                    }
                    
                    HStack(spacing: 20){
                        
                        //Boy Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Boy" : "Niño")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.purple)
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("👦🏽")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Boy" : "Niño")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        //Ball Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Ball" : "Pelota")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color(red: 0.5, green: 0.8, blue: 0.5))
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("⚽️")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Ball" : "Pelota")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        //Hat Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Hat" : "Gorra")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color(red:1, green: 0.5, blue: 0.5))
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("🧢")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Hat" : "Gorra")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                    }
                    
                    HStack(spacing: 20){
                        
                        //Girl Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Girl" : "Niña")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.red)
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("👧🏻")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Girl" : "Niña")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        //Sun Button
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Sun" : "Sol")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color.blue)
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("☀️")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Sun" : "Sol")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                        //
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: toggle.languageSett ? "Cloud" : "Nube")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(Color(red: 0.7, green: 0.7, blue: 1.0))
                                .overlay(
                                    VStack(spacing:-15){
                                        Text("☁️")
                                            .font(.system(size:120, weight: .bold, design: .rounded))
                                        Text(toggle.languageSett ? "Cloud" : "Nube")
                                            .foregroundColor(.white)
                                    }
                                )
                        })
                        
                    }
                }// Closing VStacks
                .scaledToFit()
                }.padding()
        }
    }
}


