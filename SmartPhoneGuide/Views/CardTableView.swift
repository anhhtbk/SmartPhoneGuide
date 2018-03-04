
import UIKit
import Material
import Graph

class CardTableView: UITableView {
  internal lazy var heights = [IndexPath: CGFloat]()

  public var data = [Entity]() {
    didSet {
      reloadData()
    }
  }

  /**
   An initializer that initializes the object with a NSCoder object.
   - Parameter aDecoder: A NSCoder instance.
   */
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    prepare()
  }

  /// An initializer.
  public init() {
    super.init(frame: .zero, style: .plain)
    prepare()
  }

  /// Prepares the tableView.
  open func prepare() {
    delegate = self
    dataSource = self
    separatorStyle = .none
    backgroundColor = nil

    register(CardTableViewCell.self, forCellReuseIdentifier: "CardTableViewCell")
  }

  var onComplete: ((_ result: String)->())?

}

extension CardTableView: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }

  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  /// Prepares the cells within the tableView.
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
    cell.data = data[indexPath.row]
    cell.isLast = indexPath.row == data.count - 1
    heights[indexPath] = cell.bounds.height
    return cell
  }
}

extension CardTableView: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return heights[indexPath] ?? bounds.height
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let d = data[indexPath.item]
    if let content = d["content"] as? String {
      onComplete?(content)
    }
  }
}
