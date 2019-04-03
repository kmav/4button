import Foundation

class Dogy {
	
	var color = 0
	var race : String? = nil
	var weight = 0

    init(_ color: Int, _ race: String? = nil, _ weight: Int) {
		self.color = color
		self.race = race
		self.weight = weight
	}

	func barc() {
		print("BARC")
	}
}
