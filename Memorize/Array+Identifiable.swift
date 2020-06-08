//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Justin Turner on 2020-06-07.
//  Copyright © 2020 Justin Turner. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        self.firstIndex {i in
            i.id == matching.id
            }
    }
}
