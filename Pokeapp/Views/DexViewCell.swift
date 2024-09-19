//
//  DexViewCell.swift
//  Pokeapp
//
//  Created by João Azevedo on 19.09.24.
//

import SwiftUI

struct DexViewCell: View {
	
	let entry: Entry
	
	var body: some View {
		
		HStack {
			Text(String(entry.id))
				.padding(.trailing)
			Text(entry.name.capitalized)
				.padding(.leading)
		}
	}
}

#Preview {
	DexViewCell(entry: MockEntry.sample)
}
