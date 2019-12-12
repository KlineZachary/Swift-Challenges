import Foundation
func findSubString(src : [String], key: String) -> [String]{
    var output : [String] = []
    for word in src{
        if word.contains(key){output.append(word)}
    }
    return output
}
print(findSubString(src: ["minecraftgame", "intelligent", "innercrafttalent", "knife", "scissor", "stonecrafter"], key: "craft"))
