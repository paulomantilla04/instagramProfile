//
//  StatsView.swift
//  profileInstagram
//
//  Created by Paulo Mantilla on 01/03/26.
//

import SwiftUI

struct StatsView: View {
    
    let value: Int
    let label: String
    let colorLabel: Color
    
    var body: some View {
        VStack (alignment: .leading, spacing: nil) {
            Text(value, format: .number.notation(.compactName))
                .foregroundStyle(colorLabel)
                .font(.system(size: 18, weight: .bold))
            Text(label)
                .foregroundStyle(colorLabel)
                .font(.system(size: 14, weight: .medium))
        }
    }
}


