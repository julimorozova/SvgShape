//
//  ContentView.swift
//  SvgShape
//
//  Created by Julia Morozova on 7. 5. 2026..
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(spacing: -35) {

            ZStack(alignment: .leading) {

                MyIcon()
                    .fill(Color(red: 0.85, green: 0.95, blue: 0.94))
                    .frame(height: 190)

                HStack(alignment: .top, spacing: 12) {
                    Text("Half").padding(.horizontal, 12).padding(.vertical, 6)
                        .background(Color.orange.opacity(0.2)).cornerRadius(20)
                    Text("Max").padding(.horizontal, 12).padding(.vertical, 6)
                        .background(Color.purple.opacity(0.1)).cornerRadius(20)
                }
                .font(.system(size: 12, weight: .bold))
                .frame(maxWidth: .infinity, maxHeight: 180, alignment: .top)
                .offset(y: 15)

                HStack() {
                    HStack {
                        Image(systemName: "t.circle.fill").font(.title)
                        Text("USDT").font(.headline)
                        Image(systemName: "chevron.down").font(.caption)
                    }
                    Spacer()
                    HStack(alignment: .bottom, spacing: 5) {
                        Text("300.00").font(.system(size: 28, weight: .semibold))
                        Text("USDT").font(.caption).foregroundColor(.gray).offset(y: -5)
                    }
                }
                .padding(.vertical, 80)
                .padding(.horizontal, 25)

                VStack(alignment: .leading) {
                    Text("You Pay").font(.system(size: 14)).foregroundColor(.gray)
                        .padding(.vertical, 25)
                        .padding(.horizontal, 25)
                    Spacer()
                    Text("Balance 12,788.56").font(.caption).foregroundColor(.gray)
                        .padding(.vertical, 25)
                        .padding(.horizontal, 25)

                }
                .frame(height: 180)
            }

            ZStack {
                Circle().fill(Color.white).frame(width: 75, height: 75)
                Circle().stroke(Color.gray.opacity(0.2), lineWidth: 1).frame(width: 75, height: 75)
                Image(systemName: "arrow.up.arrow.down")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .frame(width: 55, height: 55)
                    .background(Circle().fill(Color.black))
            }

            ZStack(alignment: .leading) {
                MyIcon()
                    .fill(Color(red: 0.08, green: 0.08, blue: 0.08))
                    .rotationEffect(.degrees(180))
                    .frame(height: 190)

                HStack() {
                    HStack {
                        Image(systemName: "b.circle.fill").font(.title).foregroundColor(.yellow)
                        Text("BNB").font(.headline).foregroundColor(.white)
                        Image(systemName: "chevron.down").font(.caption).foregroundColor(.white)
                    }
                    Spacer()
                    HStack(alignment: .bottom, spacing: 5) {
                        Text("1.37").font(.system(size: 28, weight: .semibold)).foregroundColor(.white)
                        Text("BNB").font(.caption).foregroundColor(.gray).offset(y: -5)
                    }
                }
                .padding(.vertical, 80)
                .padding(.horizontal, 25)

                VStack(alignment: .leading) {
                    Text("You Get").font(.system(size: 14)).foregroundColor(.white)
                        .padding(.vertical, 25)
                        .padding(.horizontal, 25)
                    Spacer()
                    Text("Balance 24.56").font(.caption).foregroundColor(.white)
                        .padding(.vertical, 25)
                        .padding(.horizontal, 25)

                }
                .frame(height: 180)

                HStack {
                    Text("Overview").foregroundColor(.white)
                    Image(systemName: "chevron.down").foregroundColor(.white)
                }
                .font(.system(size: 12, weight: .bold))
                .padding(.horizontal, 16).padding(.vertical, 8)
                .background(Color(red: 0.08, green: 0.08, blue: 0.08).opacity(0.8))
                .cornerRadius(20)
                .offset(y: 5)
                .frame(maxWidth: .infinity, maxHeight: 160, alignment: .bottom)
            }


        }
        .padding()
        .frame(height: 400)
    }
}

// Вспомогательный стиль кнопок
struct CapsuleButtonStyle: ButtonStyle {
    var color: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Capsule().fill(color))
            .font(.footnote.bold())
    }
}

#Preview {
    ContentView()
}
