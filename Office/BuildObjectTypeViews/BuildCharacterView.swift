//
//  BuildCharacterView.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import SwiftUI

struct BuildCharacterView: View {
    @State var buildCharacter: CharacterObject =  CharacterObject(id: UUID())
    @State var selectedSpecies: SpeciesObject?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Button {
                            //launch image picker
                        } label: {
                            Image("icon_hero", bundle: nil)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                        }
                        .frame(width: 100, height: 100)
                        .cornerRadius(40)
                        .background(Circle().fill(Color.white))
                        .overlay(
                            Circle().stroke(Color("Royalty"))
                        )
                        .padding(.trailing, 28)
                    }
                    
                }
                .frame(height: 200)
                .background(Color("Storm"))
                
                Text(buildCharacter.name ?? "Name")
                    .font(.largeTitle)
                
                Text(buildCharacter.description ?? "This is a spot where you would put in a little description of your character.")
                    .font(.caption)
                
                HStack(alignment: .firstTextBaseline) {
                    Text("Age - \(buildCharacter.age ?? 0)")
                        .font(.title2)
                    Spacer()
                    Text("Appearance - \(buildCharacter.appearance ?? "Striking")")
                        .font(.title2)
                }
                .padding(.top, 20)
                
                HStack(alignment: .firstTextBaseline) {
                    Text("Gender - \(buildCharacter.gender ?? "Male")")
                        .font(.title2)

                    Spacer()
                    Text("Health - \(buildCharacter.health ?? 0)")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.vertical, 8)
                
                Divider()
                
                HStack(alignment: .center) {
                    Text("Species")
                        .font(.title2)
                    Spacer()
                    Menu(buildCharacter.species?.name ?? "Elf") {
                        
                    }
                }
                .padding(.vertical, 8)
                
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BuildCharacterView()
}


let userSpecies: [SpeciesObject] = [
    SpeciesObject(id: UUID(), imageURL: "", name: "Rogarikt", description: "Humanoid species with large antlers or horns on their heads.", habitat: "Civilization", rarity: .Interest , skills: <#T##[String]#>, abilities: <#T##[UUID]#>, strengths: <#T##[String]#>, weaknesses: <#T##[String]#>)
]
