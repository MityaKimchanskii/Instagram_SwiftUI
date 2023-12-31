//
//  ProfileView.swift
//  Instagram_Clone
//
//  Created by Mitya Kim on 8/3/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                VStack(spacing: 10) {
                    //pic and stats
                    HStack {
                        Image("1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 777, title: "Followers")
                            
                            UserStatView(value: 333, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    //name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Bruce Lee")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Kung-Fu")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray))
                    }

                    
                    Divider()
                }
                
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0...15, id: \.self) { index in
                        Image("1")
                            .resizable()
                            .scaledToFill()
                    }
                    
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
