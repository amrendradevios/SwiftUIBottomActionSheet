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
        let document1 = ActionSheet(id: UUID().uuidString, name: "Document", image: "document")
        let document2 = ActionSheet(id: UUID().uuidString, name: "Document", image: "document")
        let camera1 = ActionSheet(id: UUID().uuidString, name: "Camera", image: "camera")
        let gallery1 = ActionSheet(id: UUID().uuidString, name: "Gallery", image: "gallery")
        let camera2 = ActionSheet(id: UUID().uuidString, name: "Camera", image: "camera")
        let gallery2 = ActionSheet(id: UUID().uuidString, name: "Gallery", image: "gallery")
        return [camera, gallery, document]
    }
    //, document1, document2, camera1, gallery1, camera2, gallery2, gallery2, gallery2, gallery2, gallery1, gallery1, gallery1, gallery1, document1, document1
}
