//
//  ActionSheet.swift
//  BottomActionSheet
//
//  Created by Amrendra singh on 23/09/23.
//

import Foundation


struct ActionSheet: Identifiable, Hashable {
    let id: String
    let name: String
    let image: String
    

    static func actions() -> [ActionSheet] {
        let camera = ActionSheet(id: UUID().uuidString, name: "Camera", image: "camera")
        let gallery = ActionSheet(id: UUID().uuidString, name: "Gallery", image: "gallery")
        let document = ActionSheet(id: UUID().uuidString, name: "Document", image: "document")
        return [camera, gallery, document]
    }
}
