//
//  ContentView.swift
//  LongPressGestureSample
//
//  Created by iDev0 on 2020/02/29.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // 화면 개요
    // 시작시 노란색 동그라미를 배치합니다.
    // 배치한 동그라미를 2초가 길게 누를때 마다 색깔이 변하도록 처리합니다.
    
    @State var circleColor = Color.green
    
    var body: some View {
            
        
        Circle()
            .frame(width: 200, height: 200, alignment: .center)
            .foregroundColor(circleColor)
            .gesture(
                LongPressGesture(minimumDuration: 2)
                    .onEnded { _ in
                        if self.circleColor == .green {
                            self.circleColor = .blue
                        } else {
                            self.circleColor = .green
                        }
                }
            )
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
