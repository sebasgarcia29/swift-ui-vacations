//
//  ScrollImage.swift
//  VacationsInCali
//
//  Created by Sebastian Garcia on 16/10/24.
//

import SwiftUI

struct Scrolling: View {
    var body: some View {
        ScrollView {
            VStack {
                ScrollImage(image: .melendezcity)
                ScrollImage(image: .landscapecali)
                ScrollImage(image: .landscapedowntown)
                ScrollImage(image: .catsofriver)
                ScrollImage(image: .churchermita)
                ScrollImage(image: .river)
            }
            .padding()
        }
    }
}

#Preview {
    Scrolling()
}
