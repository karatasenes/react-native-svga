import UIKit
import React
import SVGAPlayer

@objc(SVGAViewManager)
class SVGAViewManager: RCTViewManager {
  override func view() -> UIView! {
    return SVGAView()
  }

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}

@objc(SVGAView)
class SVGAView: UIView {
  private var player: SVGAPlayer!
  private var parser: SVGAParser!

  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }

  private func commonInit() {
    player = SVGAPlayer()
    parser = SVGAParser()
    addSubview(player)
    player.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      player.leadingAnchor.constraint(equalTo: leadingAnchor),
      player.trailingAnchor.constraint(equalTo: trailingAnchor),
      player.topAnchor.constraint(equalTo: topAnchor),
      player.bottomAnchor.constraint(equalTo: bottomAnchor)
    ])
  }

  @objc func setSource(_ source: NSString) {
    guard let url = URL(string: source as String) else { return }
    parser.parse(with: url, completionBlock: { videoItem in
      self.player.videoItem = videoItem
      self.player.startAnimation()
    }, failureBlock: { error in
      print("Error loading SVGA: \(String(describing: error))")
    })
  }
}
