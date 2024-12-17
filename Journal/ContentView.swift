//
//  ContentView.swift
//  Journal
//
//  Created by Samantha Hiles on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            ZStack {
                Color.purple.opacity(0.25).ignoresSafeArea()
                //change color
                VStack {
                    CustomText(text: "Journal")
                        .padding()
                        .padding()
                        .padding()
                    Spacer()
                    CustomText2(text: "Welcome to your journal! Sometimes, we all need to let go of our thoughts and send them away. With the press of a button you can push them away. Write down anything on your mind and let it go!")
                        .padding()
                        .multilineTextAlignment(.center)
                    Spacer()
                    Spacer()
                    Spacer()
                    NavigationLink("Write!", destination: WritingView())
                        .font(Font.custom("American Typewriter", size: 36))
                        .padding()
                    Spacer()
                }
            }
        }
    }
}

struct CustomText: View {
    //Large text
    let text : String
    var body: some View {
        Text(text).font(Font.custom("American Typewriter", size: 50))
            .font(.title)
            .fontWeight(.bold)
    }
}

struct CustomText2: View {
    //Small body text
    let text : String
    var body: some View {
        Text(text).font(Font.custom("American Typewriter", size: 24))
    }
}

struct CustomTextField: View {
    //Journal Text
    let text : String
    let placeholder: String
    let variable: Binding<String>
    var body: some View{
        TextField (placeholder, text: variable)
            .font(Font.custom("American Typewriter", size: 25))
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 200)
            .font(.body)
            .padding()
    }
}

struct WritingView: View {
    //Second View
    @State private var writing = ""
    @State private var sendAway = 0
    //Variable Declaration
    var body: some View {
        ZStack {
            Color.purple.opacity(0.25).ignoresSafeArea()
            VStack {
                CustomText(text: "Journal")
                CustomTextField(text: "Writing", placeholder: "Write Here", variable: $writing)
                //Actual Text Field
                Button("Send it away!") {
                    writing = ""
                }
                //Reset Button
                VStack(alignment: .leading) {
                }
                Spacer()
            }
        }
    }
}


#Preview {
    ContentView()
}

