//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Fabio Salata on 14/10/23.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                Text("An error has ocurred!")
                    .font(.title)
                    .padding(.bottom)

                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)

                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)

                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    enum SampleError: Error {
        case errorRequired
    }

    var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired,
                     guidance: "You can safaly ignore this error.")
    }

    return ErrorView(errorWrapper: wrapper)
}
