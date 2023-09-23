//
//  ActionSheetView.swift
//  BottomActionSheet
//
//  Created by Amrendra singh on 23/09/23.
//

import SwiftUI

struct ActionSheetView: View {

    let actions: [ActionSheet]
    let action: (ActionSheet) -> Void
    let dismiss: () -> Void

    init(actions: [ActionSheet], action: @escaping (ActionSheet) -> Void, dismiss: @escaping () -> Void) {
        self.action = action
        self.actions = actions
        self.dismiss = dismiss
    }
    var body: some View {
        GeometryReader { reader in
            VStack(alignment: .center, spacing: 16, content: {
                VStack(alignment: .center, spacing: 0, content: {
                    ForEach(actions) { item in
                        VStack(alignment: .center, spacing: 0, content: {
                            Button {
                                action(item)
                            } label: {
                                HStack(alignment: .center, spacing: 8) {
                                    Image(item.image).resizable().aspectRatio(contentMode: .fit).frame(width: 25, height: 25)
                                    Spacer()
                                    Text(item.name).foregroundColor(.black)
                                    Spacer()
                                }.padding()
                            }.frame(width: reader.size.width, height: 47)
                            Divider().frame(width: reader.size.width, height: 1).foregroundColor(.gray)
                        })
                    }
                }).background {
                    Color.white
                }.clipShape(RoundedRectangle(cornerRadius: 8))
                
                Button("Cancel") {
                    dismiss()
                }.frame(width: reader.size.width, height: 48).foregroundColor(.black).background {
                    Color.white
                }.clipShape(RoundedRectangle(cornerRadius: 8))
            })
        }.padding()
    }
}

#Preview {
    ActionSheetView(actions: []) { action in
    } dismiss: {
    }
}

