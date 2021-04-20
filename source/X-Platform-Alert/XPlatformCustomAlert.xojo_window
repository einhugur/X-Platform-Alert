#tag Window
Begin Window XPlatformCustomAlert
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   92
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   ""
   Type            =   1
   Visible         =   False
   Width           =   475
   Begin Canvas Canvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   40
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   10
      Transparent     =   True
      Visible         =   True
      Width           =   40
   End
   Begin Label lblMessage
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   61
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Do you want to save changes to this document before closing?"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   13
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   405
   End
   Begin CheckBox chkSuppressionButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Do not show this message again"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   61
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   38
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   False
      VisualState     =   0
      Width           =   405
   End
   Begin PushButton btnAction
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   294
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnCancel
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   386
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnAltButton2
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Button"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   192
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   80
   End
   Begin PushButton btnAltButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Button"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   69
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  #if TargetWindows
		    const WTA_NONCLIENT = 1
		    const WTNCA_NODRAWICON    = &H00000002
		    const WTNCA_NOSYSMENU     = &H00000004
		    
		    declare function SetWindowThemeAttribute lib "UxTheme" (win as ptr, attributetype as uint32, atts as ptr, size as uint32 ) as uint32
		    var atts as new MemoryBlock(8)
		    atts.UInt32Value(0)= WTNCA_NODRAWICON or WTNCA_NOSYSMENU
		    atts.UInt32Value(4)= WTNCA_NODRAWICON or WTNCA_NOSYSMENU
		    
		    var res as uint32= SetWindowThemeAttribute(ptr(self.Handle),WTA_NONCLIENT,atts,atts.Size)
		  #endif
		  
		  var p as Picture = new Picture(1,1)
		  var g as Graphics = p.Graphics
		  
		  g.FontSize = lblMessage.FontSize
		  g.FontName = lblMessage.FontName
		  
		  var combined as String = mMessage + EndOfLine + EndOfLine + mExplaination
		  
		  lblMessage.Height = g.TextHeight(combined, lblMessage.Width - 1)
		  
		  lblMessage.Value = combined
		  
		  Dim bottomValue as Integer = lblMessage.Top + lblMessage.Height 
		  
		  if mShowsSuppressionButton then
		    chkSuppressionButton.Top = bottomValue + 1
		    chkSuppressionButton.Visible = true
		    chkSuppressionButton.Value = SuppressButtonValue
		    bottomValue = chkSuppressionButton.Top + chkSuppressionButton.Height
		  end if
		  
		  self.Height = Max(92, bottomValue + 42)
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CalculateButtonWidth(g as Graphics, btn as PushButton) As Integer
		  return Max(g.TextWidth(btn.Caption) + 20, 80)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(message as String, explaination as String, showsSuppressionButton as Boolean, suppressionButtonValue as Boolean, suppressionButtonTitle as String, cancelButtonTitle as String, altButton2Title as String, altButton1Title as String, actionButtonTitle as String, alertStyle as MessageDialog.IconTypes, title as String)
		  // Calling the overridden superclass constructor.
		  self.mMessage = message
		  self.mExplaination = explaination
		  self.mShowsSuppressionButton = showsSuppressionButton 
		  self.mAlertStyle = alertStyle
		  self.SuppressButtonValue = suppressionButtonValue
		  
		  if suppressionButtonTitle.Length > 0 then
		    chkSuppressionButton.Caption = suppressionButtonTitle
		  end if
		  
		  self.Title = title
		  
		  if cancelButtonTitle.Length = 0 then
		    btnCancel.Visible = false
		  else
		    btnCancel.Caption = cancelButtonTitle
		  end if
		  
		  if altButton2Title.Length > 0 then
		    btnAltButton2.Caption = altButton2Title
		    btnAltButton2.Visible = true
		  end if
		  
		  if altButton1Title.Length > 0 then
		    btnAltButton1.Caption = altButton1Title
		    btnAltButton1.Visible = true
		  end if
		  
		  if actionButtonTitle.Length > 0 then
		    btnAction.Caption = actionButtonTitle
		  else
		    btnAction.Visible = false
		  end if
		  
		  var p as Picture = new Picture(1,1)
		  var g as Graphics = p.Graphics
		  
		  g.FontName = btnCancel.FontName
		  g.FontSize = btnCancel.FontSize
		  
		  var buttonWidth as Integer
		  var lastPlacement as Integer = 466
		  
		  if btnCancel.Visible then
		    buttonWidth = CalculateButtonWidth(g, btnCancel)
		    
		    btnCancel.Width = buttonWidth
		    btnCancel.Left = lastPlacement - buttonWidth
		    
		    lastPlacement = btnCancel.Left -10
		  end if
		  
		  if btnAltButton2.Visible then
		    buttonWidth = CalculateButtonWidth(g, btnAltButton2)
		    
		    btnAltButton2.Width = buttonWidth
		    btnAltButton2.Left = lastPlacement - buttonWidth
		    
		    lastPlacement = btnAltButton2.Left -10
		  end if
		  
		  if btnAltButton1.Visible then
		    buttonWidth = CalculateButtonWidth(g, btnAltButton1)
		    
		    btnAltButton1.Width = buttonWidth
		    btnAltButton1.Left = lastPlacement - buttonWidth
		    
		    lastPlacement = btnAltButton1.Left -10
		  end if
		  
		  if btnAction.Visible then
		    buttonWidth = CalculateButtonWidth(g, btnAction)
		    
		    btnAction.Width = buttonWidth
		    btnAction.Left = lastPlacement - buttonWidth
		  end if
		  
		  
		  Super.Constructor
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mAlertStyle As MessageDialog.IconTypes
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mExplaination As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ModalResult As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShowsSuppressionButton As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SuppressButtonValue As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  select case mAlertStyle
		  case MessageDialog.IconTypes.Caution
		    g.DrawCautionIcon(1,7)
		    
		  case MessageDialog.IconTypes.Note
		    g.DrawNoteIcon(1,7)
		    
		  case MessageDialog.IconTypes.Stop
		    g.DrawStopIcon(1,7)
		    
		  case MessageDialog.IconTypes.Question
		    
		    // Xojo does not have DrawQuestionIcon
		    
		    #if TargetWindows
		      
		      Const IDI_QUESTION = 32514
		      
		      Declare Function LoadIcon Lib "user32" Alias "LoadIconA" (ByVal hInstance As Integer, ByVal lpIconName As Integer) As Integer
		      Declare Function DrawIcon Lib "user32" Alias "DrawIcon" (ByVal hdc as Integer, ByVal X as Int32, Y as Int32, hIcon as Integer) as Boolean
		      
		      
		      var iconHandle as Integer = LoadIcon(0,IDI_QUESTION)
		      
		      var dc as Integer = g.Handle(Graphics.HandleTypeHDC)
		      
		      call DrawIcon(dc, 12 * self.ScaleFactor, 16 * self.ScaleFactor, iconHandle)
		      
		    #else
		      
		      g.DrawNoteIcon(1,7) // Find some sort of solution for Question mark on Linux
		    #endif
		    
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAction
	#tag Event
		Sub Action()
		  ModalResult = 1
		  
		  if mShowsSuppressionButton then
		    SuppressButtonValue = chkSuppressionButton.Value
		  end if
		  
		  self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  if mShowsSuppressionButton then
		    SuppressButtonValue = chkSuppressionButton.Value
		  end if
		  
		  self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAltButton2
	#tag Event
		Sub Action()
		  ModalResult = 3
		  
		  if mShowsSuppressionButton then
		    SuppressButtonValue = chkSuppressionButton.Value
		  end if
		  
		  
		  self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAltButton1
	#tag Event
		Sub Action()
		  ModalResult = 2
		  
		  if mShowsSuppressionButton then
		    SuppressButtonValue = chkSuppressionButton.Value
		  end if
		  
		  
		  self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ModalResult"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SuppressButtonValue"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
