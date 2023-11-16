//
//  SwiftUIView.swift
//  Rive Button
//
//  Created by Yusuf Can Sağlam on 16.11.2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var show = false

    var body: some View {
        VStack {

            Text("Hello, World")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Spacer()
        }
        .overlay(
            Button(action: {
                withAnimation(.snappy){
                    show.toggle()
                }
            }, label: {
                VStack(spacing: 7) {
                    Capsule()
                        .fill(show ? Color.purple : Color.primary)
                        .frame(width: 300, height: 30)
                        .rotationEffect(.init(degrees: show ? -50 : 0))
                        .offset(x: show ? 2 : 0, y: show ? 11 : 0)
                    VStack(spacing: 5) {
                        Capsule()
                            .fill(show ? Color.mint : Color.primary)
                            .frame(width: 300, height: 30)
                        Capsule()
                            .fill(show ? Color.pink : Color.primary)
                            .frame(width: 300, height: 30)
                            .offset(y: show ? -35 : 0)
                    }
                    .rotationEffect(.init(degrees: show ? 50 : 0))
                    .offset(y: show ? -26 : 0)
                }.animation(.bouncy)
            })

            .padding()

        )
    }
}

#Preview {
    SwiftUIView()
}
