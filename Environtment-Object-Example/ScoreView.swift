//
//  ScoreView.swift
//  Environtment-Object-Example
//
//  Created by Tony Gultom on 18/08/24.
//

import SwiftUI

struct ScoreView: View {
    
    /*
     In SwiftUI: ModelContainer serves a similar purpose. It manages your data models, handles persistence (like saving to a database), and is the central point for managing your app's data.
     */

        
    /*
     In SwiftUI: EnvironmentObject works similarly. You inject a shared data object into the environment, and then any view can access it without needing to pass it down manually.
     */
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

#Preview {
    ScoreView()
}
