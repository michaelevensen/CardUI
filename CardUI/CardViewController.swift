import UIKit

final class CardViewController: UIViewController {
    let cardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9763646722, green: 0.9765316844, blue: 0.9763541818, alpha: 1)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(cardView)

        let borderView = UIView()
        borderView.translatesAutoresizingMaskIntoConstraints = false
        borderView.backgroundColor = #colorLiteral(red: 0.7920698524, green: 0.792206943, blue: 0.7920612693, alpha: 1)
        view.addSubview(borderView)

        let cardViewTextLabel = UILabel()
        cardViewTextLabel.translatesAutoresizingMaskIntoConstraints = false
        cardViewTextLabel.text = "Tap or drag"
        cardViewTextLabel.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(cardViewTextLabel)

        let cardViewConstraints = [
            cardView.heightAnchor.constraint(equalToConstant: 50),
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cardView.topAnchor.constraint(equalTo: view.topAnchor),
            borderView.heightAnchor.constraint(equalToConstant: 0.5),
            borderView.topAnchor.constraint(equalTo: cardView.bottomAnchor),
            borderView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            borderView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            cardViewTextLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
            cardViewTextLabel.centerYAnchor.constraint(equalTo: cardView.centerYAnchor)
        ]
        NSLayoutConstraint.activate(cardViewConstraints)
    }
}
