Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI

Partial Public Class _Default
	Inherits Page
	Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
		Label.Text = "Button1 is clicked"
	End Sub
	Protected Sub Popup_WindowCallback(ByVal source As Object, ByVal e As DevExpress.Web.PopupWindowCallbackArgs)
		Label.Text = "Button2 is clicked"
	End Sub
End Class