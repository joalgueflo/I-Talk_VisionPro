//
//  alphabetPract.swift
//  I-Talk_visionOS
//
//  Created by José Guerrero  on 21/03/24.
//

import SwiftUI
import RealityKit
import RealityKitContent
import AVFoundation


struct alphabetPract: View {
    //@State var isOn = true
    var body: some View {
        @State var toggle = language()
        @State var synthesizer = AVSpeechSynthesizer()
        
        ZStack{
            Color.pink
                .opacity(0.4)
                .ignoresSafeArea()

            ScrollView{
                    VStack(spacing:50){
                        VStack(spacing:20){
                            Toggle(isOn: $toggle.languageSett) {
                                HStack{
                                    Text("ES - EN")
                                    Image(systemName: "globe")
                                }
                            }.padding(.horizontal, 250).padding(.vertical, 20)
                            
                            NavigationLink(destination: ContentView()){
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.yellow)
                                    .overlay(
                                        Image(systemName: "arrowshape.left")
                                            .foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                            .scaledToFit()
                                    )
                            }.padding(.vertical,-40)
                        }
                        HStack(spacing: 20){
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "a")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.red)
                                    .overlay(
                                        Text("A").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "b")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundColor(.blue)
                                    .overlay(
                                        Text("B").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                        
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "c")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.yellow)
                                    .overlay(
                                        Text("C").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "d")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.orange)
                                    .overlay(
                                        Text("D").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "e")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.green)
                                    .overlay(
                                        Text("E").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                        }
                        HStack(spacing: 20){
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "f")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.green)
                                    .overlay(
                                        Text("F").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "g")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.red)
                                    .overlay(
                                        Text("G").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "h")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.blue)
                                    .overlay(
                                        Text("H").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "i")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.yellow)
                                    .overlay(
                                        Text("I").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "j")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.orange)
                                    .overlay(
                                        Text("J").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            
                            
                            
                        }
                        
                        HStack(spacing: 20){
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "k")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.orange)
                                    .overlay(
                                        Text("K").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "l")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.green)
                                    .overlay(
                                        Text("L").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "m")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.red)
                                    .overlay(
                                        Text("M").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "n")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.blue)
                                    .overlay(
                                        Text("N").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "o")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.yellow)
                                    .overlay(
                                        Text("O").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            
                            
                        }
                        
                        HStack(spacing: 20){
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "p")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.yellow)
                                    .overlay(
                                        Text("P").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "q")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.orange)
                                    .overlay(
                                        Text("Q").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "r")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.green)
                                    .overlay(
                                        Text("R").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "s")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.red)
                                    .overlay(
                                        Text("S").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "t")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.blue)
                                    .overlay(
                                        Text("T").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                        }
                        
                        HStack(spacing: 20){
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "u")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.blue)
                                    .overlay(
                                        Text("U").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "v")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.yellow)
                                    .overlay(
                                        Text("V").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "w")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.orange)
                                    .overlay(
                                        Text("W").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "x")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.green)
                                    .overlay(
                                        Text("X").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                            
                            Button(action: {
                                let alphabet = AVSpeechUtterance(string: "y")
                                alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                                alphabet.rate = 0.3
                                synthesizer.speak(alphabet)
                            },
                                   label: {
                                Capsule()
                                    .frame(width: 110, height: 90)
                                    .foregroundStyle(Color.red)
                                    .overlay(
                                        Text("Y").foregroundColor(.white)
                                            .font(.system(size:80, weight: .bold, design: .rounded))
                                    )
                            })
                        }
                        
                        Button(action: {
                            let alphabet = AVSpeechUtterance(string: "z")
                            alphabet.voice = AVSpeechSynthesisVoice(language: toggle.languageSett ? "en-US" : "es-LA")
                            alphabet.rate = 0.3
                            synthesizer.speak(alphabet)
                        },
                               label: {
                            Capsule()
                                .frame(width: 110, height: 90)
                                .foregroundStyle(Color.green)
                                .overlay(
                                    Text("Z").foregroundColor(.white)
                                        .font(.system(size:80, weight: .bold, design: .rounded))
                                )
                        })
                        
                        
                    }

            }.padding()
    }.navigationBarHidden(true)
}
        
}



