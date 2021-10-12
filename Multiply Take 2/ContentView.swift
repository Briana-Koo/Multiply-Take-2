//
//  ContentView.swift
//  Shared
//
//  Created by Student on 9/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Group {
        Text("Multiply")
            .font(.title)
            .bold()
            .padding()
            TextField("Enter a number", text : $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment : .center)
                .font(.body)
                .padding()
            Text("X")
                .padding()
            TextField("Enter a number", text : $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondNumber }
                   
                    if calculation % 2 == 0 {imageName = "6 Various Sized Rubber Ducks"}
                    else {imageName = "3 Pirate Rubber Ducks"}
                    
                    if calculation == 64 {
                        imageName = "Hotdog Rubber Duck"}
                    
                    }
                }
            }
                Text("Result: \(calculation)")
                .frame(width: 200, height : 30, alignment : .center)
                .font(.body)
                .padding()
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70, alignment: .center)
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
                
            }
        }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

