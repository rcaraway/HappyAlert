# HappyAlert

Quick way to show standard alerts. 

## Install with Swift Package Manager

## How to use: 

**Within a `UIViewController`:**

To show a simple message: 

`self.showAlert(title: "Message Sent", message: nil)`


Show with a `cancel` or `OK` action: 

```
self.showAlert(title: "Send Message?", message: nil) {
   self.sendMessage() //this block called when confirmed
}
