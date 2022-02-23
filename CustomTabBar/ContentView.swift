//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Dominika Poleshyck on 22/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                HStack {
                    Button(action: { self.selected = 0 }) {
                        Image("hotdog")
                    } .foregroundColor(self.selected == 0 ? .black : .white)
                    Spacer(minLength: 12)
                    
                    Button(action: { self.selected = 1 }) {
                        Image("taco")
                    } .foregroundColor(self.selected == 1 ? .black : .white)
                    Spacer().frame(width: 120)
                    
                    Button(action: { self.selected = 2 }) {
                        Image("icecream")
                    } .foregroundColor(self.selected == 2 ? .black : .white)
                    Spacer(minLength: 12)
                    
                    Button(action: { self.selected = 2 }) {
                        Image("pizza")
                    } .foregroundColor(self.selected == 2 ? .black : .white)
                    
                } .padding()
                    .padding(.horizontal, 0)
                    .background(CurvedShape())
                Button {
                    //
                } label: {
                    Image("heart")
                        .renderingMode(.original)
                        .padding(18)
                } .background(.yellow)
                    .clipShape(Circle())
                    .offset(y: -32)
                    .shadow(radius: 5)

            }
        } .background(.orange)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CurvedShape: View  {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 70))
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 70), radius: 50, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 70))
        } .fill(Color.indigo)
            .rotationEffect(.init(degrees: 180))
    }
}

