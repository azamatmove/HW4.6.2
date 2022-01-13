import UIKit
import SnapKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    private var books: [Struct] = []
    
    private lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.backgroundColor = UIColor(red: 41 / 255, green: 42 / 255, blue: 47 / 255,alpha: 1)
        view.delegate = self
        view.dataSource = self
        view.register(CustomCell.self, forCellWithReuseIdentifier: "BookCell")
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
    }
    
    private func setupSubviews() {
        
        books.append(Struct(image: "poor_app_icon", price: "1 сом", writer: "dfdfsa"))
        books.append(Struct(image: "diamond_app_icon", price: "1 сом", writer: "Aza"))
        books.append(Struct(image: "rock_app_image", price: "1 сом", writer: "Aza Aza"))
        books.append(Struct(image: "8140 1", price: "1 сом", writer: "Aza"))
        books.append(Struct(image: "Location1", price: "1 сом", writer: "Aza"))
        books.append(Struct(image: "Flag", price: "1 сом", writer: "Aza"))
        books.append(Struct(image: "diamond_app_icon", price: "6 сом", writer: "Aza"))
        books.append(Struct(image: "8140 1", price: "1 сом", writer: "Aza"))

        
        
        view.backgroundColor = UIColor(red: 41 / 255, green: 42 / 255, blue: 47 / 255,alpha: 1)
        
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.width.equalToSuperview().inset(20)
            make.height.equalToSuperview()
            make.top.equalToSuperview().inset(view.frame.height * 0.05)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(25)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(
            width: (view.frame.width / 2) - 30,
            height: (view.frame.height / 2) - 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let index = indexPath.row
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCell", for: indexPath) as! CustomCell
        let model = books[index]
        
        cell.image.image = UIImage(named: model.image)
        cell.price.text = String(model.price)
        cell.author.text = String(model.writer)        

        return cell
    }
}


