//
//  OffsetKey.swift
//  TaskManagementApp
//
//  Created by eyh.mac on 3.10.2023.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
