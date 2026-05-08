//
//  MyIcon.swift
//  SvgShape
//
//  Created by Julia Morozova on 8. 5. 2026..
//

import SwiftUI

struct MyIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height

        func pt(_ x: CGFloat, _ y: CGFloat) -> CGPoint {
            CGPoint(x: x * w, y: y * h)
        }

        // Начало отрисовки
        path.move(to: pt(0.00105, 0.13514))

        // Левая грань
        path.addLine(to: pt(0.00105, 0.44144))
        path.addLine(to: pt(0.00105, 0.87613))

        // Нижний левый угол
        path.addCurve(to: pt(0.05672, 0.98874),
                      control1: pt(0.02015, 0.94421),
                      control2: pt(0.03229, 0.96928))

        // Нижняя грань до центрального выреза
        path.addCurve(to: pt(0.32353, 0.98874),
                      control1: pt(0.05672, 0.98874),
                      control2: pt(0.30116, 1.00019))

        // Центральный вырез (нижний)
        path.addCurve(to: pt(0.3771, 0.93468), control1: pt(0.3459, 0.97729), control2: pt(0.35822, 0.96937))
        path.addCurve(to: pt(0.42437, 0.78153), control1: pt(0.382, 0.86794), control2: pt(0.3926, 0.83454))
        path.addCurve(to: pt(0.50315, 0.72523), control1: pt(0.45395, 0.75193), control2: pt(0.4713, 0.74021))
        path.addCurve(to: pt(0.57983, 0.78153), control1: pt(0.5358, 0.74365), control2: pt(0.55251, 0.75608))
        path.addCurve(to: pt(0.6334, 0.93468), control1: pt(0.6081, 0.83964), control2: pt(0.6203, 0.87307))

        // Переход к правому нижнему углу
        path.addCurve(to: pt(0.67227, 0.98874), control1: pt(0.64457, 0.96457), control2: pt(0.65176, 0.97929))
        path.addLine(to: pt(0.94223, 0.98874))

        // Правый нижний угол
        path.addCurve(to: pt(0.99895, 0.87613), control1: pt(0.97177, 0.97008), control2: pt(0.98479, 0.94751))

        // Правая грань
        path.addLine(to: pt(0.99895, 0.11712))

        // Правый верхний угол
        path.addCurve(to: pt(0.95378, 0.00225), control1: pt(0.98847, 0.04963), control2: pt(0.97626, 0.03182))
        path.addLine(to: pt(0.71218, 0.00225))

        // Верхний вырез (правая часть)
        path.addCurve(to: pt(0.67857, 0.07658), control1: pt(0.69528, 0.02723), control2: pt(0.68729, 0.04282))
        path.addLine(to: pt(0.67227, 0.18018))
        path.addCurve(to: pt(0.62185, 0.28378), control1: pt(0.65649, 0.24842), control2: pt(0.64525, 0.26969))

        // Верхний вырез (горизонталь)
        path.addLine(to: pt(0.3771, 0.28378))

        // Верхний вырез (левая часть)
        path.addCurve(to: pt(0.34769, 0.23649), control1: pt(0.36387, 0.27384), control2: pt(0.3578, 0.2617))
        path.addLine(to: pt(0.32353, 0.06306))

        // Левый верхний угол
        path.addCurve(to: pt(0.26681, 0.00225), control1: pt(0.30258, 0.01974), control2: pt(0.29007, 0.00778))
        path.addLine(to: pt(0.07143, 0.00225))
        path.addCurve(to: pt(0.02416, 0.03829), control1: pt(0.04202, 0.00225), control2: pt(0.02416, 0.03829))

        // Замыкание
        path.addLine(to: pt(0.00105, 0.13514))
        path.closeSubpath()

        return path
    }
}
