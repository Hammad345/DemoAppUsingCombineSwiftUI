//
//  ContentView.swift
//  DemoAppUsingCombineSwiftUI
//
//  Created by Hammad on 07/11/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PostsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Posts")
            .onAppear {
                viewModel.getPosts()
            }
        }
    }
    
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//#Preview {
//    ContentView()
//}
