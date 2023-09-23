//
//  ContentView.swift
//  BottomActionSheet
//
//  Created by Amrendra singh on 23/09/23.
//

import SwiftUI

struct ContentView: View {

    @State var isPresented: Bool = false
    @State var selectedOption: String = ""
    var actions: [ActionSheet] = ActionSheet.actions()
    var actionCount = 0
    init() {
        actionCount = actions.count
    }
    var body: some View {
        VStack(alignment: .center, spacing: 16, content: {
            Button {
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Open sheet")
                }
            }.sheet(isPresented: $isPresented, onDismiss: {
                
            }, content: {
                ActionSheetView(actions: ActionSheet.actions()) { action in
                    isPresented = false
                    selectedOption = action.name
                } dismiss: {
                    isPresented = false
                }.presentationDetents([.medium])
                    .presentationDragIndicator(.hidden)
                    .presentationCornerRadius(0)
                    .presentationBackground(Color.black.opacity(0.0))
                    .presentationDetents([.height(CGFloat(ActionSheet.actions().count * 48 + (actionCount * 8) + 100))])
            })
            
            Text("Selected option:  \(selectedOption.isEmpty ? "None" : selectedOption)")
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
