public func solution(_ A: inout [Int]) -> Int {
  var result: Int = A[0]
  for i in 1..<A.count {
    if A[i] < result {
      result = A[i]
    }
  }
  return result
}

var input = [0,100,300,400,-100]
print(solution(&input))
//import UIKit
//enum ImageFetchingError: Error{
//    case timeout
//    case unkown
//}
//
//protocol CatImageCellModel{
//    var placeholderImage: UIImage {get}
//    func fetchCatImage(completion: @escaping (Result<UIImage, ImageFetchingError>) -> Void)
//}
//
//
//
//final class CatImageCell: UICollectionViewCell {
//
//    private var imageView: UIImageView!
//
//    convenience init(imageView: UIImageView) {
//        self.init()
//
//        self.imageView = imageView
//    }
//
//    func set(model: CatImageCellModel){
//        DispatchQueue.main.async {
//            model.fetchCatImage{ (result) -> Void in
//                switch result{
//
//                case .success(let image):
//                    self.imageView = nil //empty old image
//                    self.imageView = UIImageView(image: image) //set new image
//                    break
//                case .failure(let imageError):
//
//                    //timeout error try 2 more times
//                    if imageError == ImageFetchingError.timeout{
//                        for _ in 0..<2{
//                            self.set(model: model)
//                        }
//
//                    }else{//unkown error so set place holder
//                        self.imageView = UIImageView(image: model.placeholderImage)
//                    }
//                    break
//
//                }
//            }
//        }
//
//
//
//    }
//}
//

