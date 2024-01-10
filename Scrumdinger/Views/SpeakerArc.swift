import SwiftUI

struct SpeakerArc: Shape {
    // length of arc will be determined by these two attributes
    let speakerIndex: Int
    let totalSpeakers: Int
    
    // make sure that all speakers add up to a full circle
    private var degreesPerSpeaker: Double {
        360.0 / Double(totalSpeakers)
    }
    
    // startAngle of current speaker
    private var startAngle: Angle {
        Angle(degrees: degreesPerSpeaker * Double(speakerIndex) + 1.0)
    }
    
    // endAngle of current speaker
    private var endAngle: Angle {
        Angle(degrees: startAngle.degrees + degreesPerSpeaker - 1.0)
    }
    
    func path(in rect: CGRect) -> Path {
        // diameter is diameter of parent, but 12px smaller on each site to create the desired overlay effect
        let diameter = min(rect.size.width, rect.size.height) - 24.0
        let radius = diameter / 2.0
        
        // center of circle is center of parent
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        return Path {
            path in
            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
    }
}
