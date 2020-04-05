#if !os(macOS)

import UIKit

public extension UIViewController {
    @discardableResult
    func showAlert(title: String?, message: String?) -> UIAlertController {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak self] (action) in
            self?.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        return alert
    }
    
    @discardableResult
    func showAlert(title: String?, message: String?, cancelTitle: String = "Cancel", actionTitle: String = "OK", _ actionBlock: @escaping () -> Void) -> UIAlertController {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: cancelTitle, style: .cancel, handler: { [weak self] (action) in
            self?.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: actionTitle, style: .default, handler: { [weak self] (action) in
            if self != nil {
                actionBlock()
            }
        }))
        self.present(alert, animated: true, completion: nil)
        return alert
    }
    
}

#endif
