#tag Class
Protected Class Alert
	#tag Method, Flags = &h0
		Sub Constructor()
		  IconType = MessageDialog.IconTypes.None
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowModal() As XPlatformAlert.AlertResult
		  
		  #if TargetMacOS
		    var alert as EinhugurMacOSBridge.NSAlert = new EinhugurMacOSBridge.NSAlert()
		    
		    alert.MessageText = Message
		    alert.InformativeText = Explanation
		    
		    select case IconType
		      
		    case MessageDialog.IconTypes.None
		      alert.AlertStyle = EinhugurMacOSBridge.NSAlert.StyleValues.Informational 
		      
		    case MessageDialog.IconTypes.Caution
		      alert.AlertStyle = EinhugurMacOSBridge.NSAlert.StyleValues.Critical 
		      
		    case MessageDialog.IconTypes.Note
		      alert.AlertStyle = EinhugurMacOSBridge.NSAlert.StyleValues.Informational
		      
		    case MessageDialog.IconTypes.Question
		      alert.AlertStyle = EinhugurMacOSBridge.NSAlert.StyleValues.Informational
		      
		    case MessageDialog.IconTypes.Stop
		      alert.AlertStyle = EinhugurMacOSBridge.NSAlert.StyleValues.Critical
		      
		    end select
		    
		    if ActionButtonTitle <> "" then
		      alert.AddButtonWithTitle(ActionButtonTitle).HasDestructiveAction = ActionIsDestructive
		    end if
		    
		    if CancelButtonTitle <> "" then
		      call alert.AddButtonWithTitle(CancelButtonTitle)
		    end if
		    
		    if AlternateButton1Title <> "" then
		      alert.AddButtonWithTitle(AlternateButton1Title).HasDestructiveAction = AlternateButton1IsDestructive
		    end if
		    
		    if AlternateButton2Title <> "" then
		      alert.AddButtonWithTitle(AlternateButton2Title).HasDestructiveAction = AlternateButton2IsDestructive
		    end if
		    
		    alert.ShowsSuppressionButton = ShowsSuppressionButton
		    
		    if ShowsSuppressionButton then
		      if SuppressionButtonTitle.Length > 0 then
		        alert.SuppressionButton.Title = SuppressionButtonTitle
		      end if
		      alert.SuppressionButton.State = if(SuppressionButtonValue,  EinhugurMacOSBridge.NSButton.ControlStateValues.ON, EinhugurMacOSBridge.NSButton.ControlStateValues.OFF)
		    end if
		    
		    var result as Integer = alert.RunModal()
		    
		    if ShowsSuppressionButton then
		      SuppressionButtonValue = (alert.SuppressionButton.State = EinhugurMacOSBridge.NSButton.ControlStateValues.ON)
		    end if
		    
		    select case result
		    case 1001
		      return XPlatformAlert.AlertResult.Cancel
		      
		    case 1000
		      return XPlatformAlert.AlertResult.Action
		      
		    case 1002
		      return XPlatformAlert.AlertResult.AlternateAction1
		      
		    case 1003
		      return XPlatformAlert.AlertResult.AlternateAction2
		    end select
		    
		  #ElseIf TargetLinux
		    var alertStyle as EinhugurLinuxBridgeGtk.GtkMessageDialog.StyleValues
		    
		    select case IconType
		      
		    case MessageDialog.IconTypes.None
		      alertStyle = EinhugurLinuxBridgeGtk.GtkMessageDialog.StyleValues.Other
		      
		    case MessageDialog.IconTypes.Caution
		      alertStyle = EinhugurLinuxBridgeGtk.GtkMessageDialog.StyleValues.Warning
		      
		    case MessageDialog.IconTypes.Note
		      alertStyle= EinhugurLinuxBridgeGtk.GtkMessageDialog.StyleValues.Information
		      
		    case MessageDialog.IconTypes.Question
		      alertStyle = EinhugurLinuxBridgeGtk.GtkMessageDialog.StyleValues.Question
		      
		    case MessageDialog.IconTypes.Stop
		      alertStyle = EinhugurLinuxBridgeGtk.GtkMessageDialog.StyleValues.Error
		      
		    end select
		    
		    var alert as EinhugurLinuxBridgeGtk.GtkMessageDialog = new EinhugurLinuxBridgeGtk.GtkMessageDialog( _
		    alertStyle, _
		    EinhugurLinuxBridgeGtk.GtkMessageDialog.ButtonValues.None)
		    
		    alert.Text = Message
		    alert.SecondaryText = Explanation
		    
		    if ActionButtonTitle <> "" then
		      var btn as EinhugurLinuxBridgeGtk.GtkButton =  alert.AddButton(ActionButtonTitle, Integer(XPlatformAlert.AlertResult.Action))
		      
		      if ActionIsDestructive then
		        btn.SetDestructive()
		      end if
		    end if
		    
		    if CancelButtonTitle <> "" then
		      call alert.AddButton(CancelButtonTitle, Integer(XPlatformAlert.AlertResult.Cancel))
		    end if
		    
		    if AlternateButton1Title <> "" then
		      var btn as EinhugurLinuxBridgeGtk.GtkButton =  alert.AddButton(AlternateButton1Title, Integer(XPlatformAlert.AlertResult.AlternateAction1))
		      
		      if AlternateButton1IsDestructive then
		        btn.SetDestructive()
		      end if
		    end if
		    
		    if AlternateButton2Title <> "" then
		      var btn as EinhugurLinuxBridgeGtk.GtkButton =  alert.AddButton(AlternateButton2Title, Integer(XPlatformAlert.AlertResult.AlternateAction2))
		      
		      if AlternateButton2IsDestructive then
		        btn.SetDestructive()
		      end if
		    end if
		    
		    
		    
		    var checkbox as EinhugurLinuxBridgeGtk.GtkCheckButton 
		    if ShowsSuppressionButton then
		      checkbox = new EinhugurLinuxBridgeGtk.GtkCheckButton(If(SuppressionButtonTitle.Length > 0, SuppressionButtonTitle, "Do not show this message again"))
		      checkbox.Active = SuppressionButtonValue
		      
		      alert.ContentArea.PackStart( checkbox, true, true, 1)
		      
		      // Show all the newly added custom controls in the dialog (the checkbox we added above)
		      alert.ShowAll()
		    end if
		    
		    var result as Integer = alert.ShowModal()
		    
		    if checkbox <> nil then
		      SuppressionButtonValue = checkbox.Active
		    end if
		    
		    alert.Destroy()
		    
		    // Catch if we exited with Escape
		    if(result = EinhugurLinuxBridgeGtk.GtkDialog.RESPONSE_DELETE_EVENT) then
		      result = Integer(XPlatformAlert.AlertResult.Cancel)
		    end if
		    
		    return XPlatformAlert.AlertResult(result)
		  #else
		    if AlternateButton2Title <> "" or ShowsSuppressionButton then
		      // We need to use Custom dialog here
		      
		      var dlg as XPlatformCustomAlert = new XPlatformCustomAlert( _
		      Message, _
		      Explanation, _
		      ShowsSuppressionButton, _
		      SuppressionButtonValue, _
		      SuppressionButtonTitle, _
		      CancelButtonTitle, _
		      AlternateButton2Title, _ 
		      AlternateButton1Title, _
		      ActionButtonTitle, _ 
		      IconType, _
		      Title)
		      
		      dlg.ShowModal()
		      
		      if ShowsSuppressionButton then
		        SuppressionButtonValue = dlg.SuppressButtonValue
		      end if
		      
		      return dlg.ModalResult
		      
		    else
		      // We just use Xojo MessageDialog for this case
		      
		      var dlg as MessageDialog = new MessageDialog()
		      dlg.Title = Title
		      dlg.Message = Message
		      dlg.Explanation = Explanation
		      dlg.IconType = IconType
		      
		      if ActionButtonTitle <> "" then
		        dlg.ActionButton.Caption = ActionButtonTitle
		        dlg.ActionButton.Visible = true
		      else
		        dlg.ActionButton.Visible = false 
		      end if
		      
		      if CancelButtonTitle <> "" then
		        dlg.CancelButton.Caption = CancelButtonTitle
		        dlg.CancelButton.Visible = true
		      else
		        dlg.CancelButton.Visible = false 
		      end if
		      
		      if AlternateButton1Title <> "" then
		        dlg.AlternateActionButton.Caption = AlternateButton1Title
		        dlg.AlternateActionButton.Visible = true
		      else
		        dlg.AlternateActionButton.Visible = false 
		      end if
		      
		      var btn as MessageDialogButton = dlg.ShowModal()
		      
		      select case btn
		        
		      case dlg.CancelButton
		        return XPlatformAlert.AlertResult.Cancel
		        
		      case dlg.ActionButton
		        return XPlatformAlert.AlertResult.Action
		        
		      case else
		        return XPlatformAlert.AlertResult.AlternateAction1
		        
		      end select
		    end if
		  #endif
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ActionButtonTitle As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ActionIsDestructive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AlternateButton1IsDestructive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AlternateButton1Title As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AlternateButton2IsDestructive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AlternateButton2Title As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CancelButtonTitle As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Explanation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IconType As MessageDialog.IconTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		Message As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ShowsSuppressionButton As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SuppressionButtonTitle As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SuppressionButtonValue As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Title As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Message"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Explanation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActionButtonTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CancelButtonTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateButton1Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateButton2Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsSuppressionButton"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SuppressionButtonTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="MessageDialog.IconTypes"
			EditorType="Enum"
			#tag EnumValues
				"1 - Caution"
				"-1 - None"
				"0 - Note"
				"3 - Question"
				"2 - Stop"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActionIsDestructive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateButton1IsDestructive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateButton2IsDestructive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SuppressionButtonValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
