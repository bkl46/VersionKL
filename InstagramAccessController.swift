import UIKit

class InstagramAccessController: UIViewController {
    
    private let toggleSwitch: UISwitch = {
        let toggle = UISwitch()
        toggle.translatesAutoresizingMaskIntoConstraints = false
        return toggle
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Instagram Access"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    private let accessService = InstagramAccessService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
        setupActions()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "Instagram Access Control"
        
        view.addSubview(statusLabel)
        view.addSubview(toggleSwitch)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            statusLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            statusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            toggleSwitch.centerYAnchor.constraint(equalTo: statusLabel.centerYAnchor),
            toggleSwitch.leadingAnchor.constraint(equalTo: statusLabel.trailingAnchor, constant: 20),
            toggleSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupActions() {
        toggleSwitch.addTarget(self, action: #selector(toggleSwitchChanged), for: .valueChanged)
        toggleSwitch.isOn = accessService.isInstagramAccessEnabled
    }
    
    @objc private func toggleSwitchChanged() {
        accessService.toggleInstagramAccess(isEnabled: toggleSwitch.isOn)
    }
} 