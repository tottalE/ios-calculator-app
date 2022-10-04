
//  Created by tottalE, Bella, woong

import Foundation

extension String {
    
    func split(with target: Character) -> [String] {
        return self.split(separator: target).map{ String($0) }
    }
}
