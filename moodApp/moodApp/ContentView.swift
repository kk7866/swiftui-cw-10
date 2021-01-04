//
//  ContentView.swift
//  moodApp
//
//  Created by khalid Kaleem on 1/4/21.
//

import SwiftUI


struct ContentView: View {
    @State var mood: String = ""
    var body: some View {
        NavigationView {
            
            VStack{
                Text("i feel")
                Text(mood)
                
                HStack{
                    Text("😊")
                        .onTapGesture {
                            mood = "Happy"
                    }
                    Text("😞")
                       .onTapGesture {
                        mood = "sad"

                    }
                    Text("😒")
                        .onTapGesture {
                            mood = "meh"

                    }
                    Text("😇")
                        .onTapGesture {
                            mood = "fine"

                    }
                }
            }
        }.navigationBarTitle("MoodCheck")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
