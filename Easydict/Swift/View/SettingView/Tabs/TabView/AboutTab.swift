//
//  AboutTab.swift
//  Easydict
//
//  Created by Kyle on 2023/10/29.
//  Copyright © 2023 izual. All rights reserved.
//

import SFSafeSymbols
import SwiftUI

// MARK: - AboutTab

struct AboutTab: View {
    // MARK: Internal

    var body: some View {
        VStack {
            Spacer()
            
            Button {
                NSWorkspace.shared.open(
                    URL(string: "https://github.com/HTTPS1121/Easydict")!
                )
            } label: {
                Label("GitHub", systemSymbol: .starFill)
                    .font(.system(size: 16, weight: .medium))
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }

    // MARK: Private

    @Environment(\.openWindow) private var openWindow
}

#Preview {
    AboutTab()
}
