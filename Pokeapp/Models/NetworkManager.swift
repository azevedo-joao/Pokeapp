//
//  NetworkManager.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var entries = [Entry]()
    
    func fetchData() {
        for n in 1...151 {
            if let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(n)/") {
                let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { data, response, error in
                    if error == nil {
                        let decoder = JSONDecoder()
                        if let safeData = data {
                            do {
                                let entry = try decoder.decode(Entry.self, from: safeData)
                                DispatchQueue.main.async {
                                    self.entries.append(entry)
                                }
                            } catch {
                                print(error)
                            }
                        }
                    }
                }
                task.resume()
            }
        }
    }
    
    func getSortedEntries() -> [Entry] {
        return entries.sorted(by: { $0.id < $1.id })
    }
}
