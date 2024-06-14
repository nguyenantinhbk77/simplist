//
//  EmptyResultsView.swift
//  Simplist
//
//  Created by Tinh Nguyen on 15/6/24.
//

import SwiftUI

struct EmptyResultsView: View {
    let query: String
    
    var body: some View {
        VStack {
            Image(systemName: "pawprint.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
                .foregroundColor(.yellow)
            Text("Sorry, we couldn't find animals for \"\(query)\"")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

struct EmptyResultsView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyResultsView(query: "Kiki")
    }
}

