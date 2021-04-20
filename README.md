# X-Platform-Alert
Cross platform alert dialog for Xojo using NSAlert from Einhugur macOS Bridge Plugin on macOS systems.

On Windows built in Xojo MessageDialog is used whenever the used features allow, and when more complex features 
are used then more advanced custom dialog is used.

The Einhugur MacOS Bridge Plugin can be obtained from: https://www.einhugur.com

**For Windows, Xojo MessageDialog is used when feature set does not require more, else custom Alert is used.**

![GitHub Logo](/images/CrossPlatformAlert.PNG)

**For macOS native NSAlert is used.**

![GitHub Logo](/images/MacOSAlert.PNG)


**Linux support has not been tested or tuned yet.**

**Example usage:**
```xojo
var alert as XPlatformAlert.Alert = new XPlatformAlert.Alert()

alert.Message = "Do you want to save changes to this document before closing?"
alert.Explanation = "If you don't save, your changes will be lost. "

alert.IconType = MessageDialog.IconTypes.Caution 

alert.ShowsSuppressionButton = true

alert.ActionButtonTitle = "Save"
alert.CancelButtonTitle = "Cancel"
alert.AlternateButton1Title = "Do not save"
alert.AlternateButton1IsDestructive = true // This will make macOS Big Sur system flag the button with red.

var dialogResult as XPlatformAlert.AlertResult = alert.ShowModal()

select case dialogResult
  
case XPlatformAlert.AlertResult.Cancel
  // Cancel
  return
  
case XPlatformAlert.AlertResult.Action
  // Action - Save in this case
  
  
case XPlatformAlert.AlertResult.AlternateAction1
  // Alternate action
  
end select

// Check result of the suppression button
var suppress as Boolean = alert.SuppressionButtonValue
```
