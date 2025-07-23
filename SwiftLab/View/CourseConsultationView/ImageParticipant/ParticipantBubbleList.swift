//
//  ParticipantBubbleList.swift
//  SwiftLab
//
//  Created by Dembo on 22/07/2025.
//

//import SwiftUI

//struct ParticipantBubbleList: View {
//    let participants: [User]
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                if !participants.isEmpty {
//                    ForEach(participants) { participant in
//                        if let imageName = participant.currentImageName {
//                            CircleImageEvent(image: Image(imageName))
//                                .frame(width: 40, height: 40)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ParticipantBubbleList(participants: DatabaseParticipants.participantData)
//}

import SwiftUI

struct MignatureParticipant: View {
    var participants: [User]
    
    var body: some View {
        HStack {
            ZStack {
                ForEach(0..<min(4, participants.count), id: \.self) { index in
                    if let url = participants[index].imageUrl {
                        CircleImageParticipant(url: url)
                            .frame(width: 15, height: 15)
                            .clipShape(Circle())
                            .offset(x: CGFloat(index) * 13)
                    }
                }
            }
            .padding(.trailing, 25)
        }
    }
}

#Preview {
    MignatureParticipant(participants: User.userDatabase)
}
