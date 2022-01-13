import Foundation
import UIKit
import SnapKit
// Это кастомная ячейка наследуется UICollectionViewCell.
class TestCellWork: UICollectionViewCell {
    lazy var titleView: UILabel = {
        let view = UILabel()
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(titleView)
        titleView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        }
    }
