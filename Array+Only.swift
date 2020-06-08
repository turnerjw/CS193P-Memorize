//
//  Array+Only.swift
//  Memorize
//
//  Created by Justin Turner on 2020-06-07.
//  Copyright © 2020 Justin Turner. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
