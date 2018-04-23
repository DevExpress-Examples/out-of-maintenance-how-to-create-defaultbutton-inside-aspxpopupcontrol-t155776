<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<script type="text/javascript">
		var enterKeyCode = 13;
		window.onkeypress = function OnKeyPress(e) {
			if (e.keyCode !== enterKeyCode)
				return;
			else if (!Popup.IsVisible()) {
				alert('Popup is hidden');
				return;
			}
			else if (ButtonList.GetValue() === null) {
				alert("Default button isn't chosen");
				return
			}
			else {
				ASPxClientUtils.PreventEventAndBubble(e);
				var defaultButtonName = ButtonList.GetValue();
				var defaultButton = ASPxClientControl.GetControlCollection().GetByName(defaultButtonName);
				defaultButton.DoClick();
			}
		}
		function OnClickShow(s, e) {
			Popup.Show();
		}
		function OnClickButton2(s, e) {
			Popup.PerformCallback();
		}
		function OnClickButton3(s, e) {
			Label.SetText("Button3 is clicked");
		}
	</script>
	<form id="form1" runat="server">
		<dx:ASPxRadioButtonList runat="server" ID="ButtonList" ClientInstanceName="ButtonList">
			<Items>
				<dx:ListEditItem Text="Button1" Value="Button1" />
				<dx:ListEditItem Text="Button2" Value="Button2" />
				<dx:ListEditItem Text="Button3" Value="Button3" />
			</Items>
		</dx:ASPxRadioButtonList>
		<dx:ASPxButton runat="server" ID="ShowPopup" AutoPostBack="false" Text="Show popup">
			<ClientSideEvents Click="OnClickShow" />
		</dx:ASPxButton>
		<dx:ASPxPopupControl runat="server" ID="Popup" Modal="true" CloseAction="CloseButton" OnWindowCallback="Popup_WindowCallback"
			PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="Popup">
			<ContentCollection>
				<dx:PopupControlContentControl>
					<dx:ASPxLabel runat="server" ID="Label" ClientInstanceName="Label"></dx:ASPxLabel>
					<dx:ASPxButton runat="server" ID="Button1" ClientInstanceName="Button1" OnClick="Button1_Click" Text="Button1"></dx:ASPxButton>
					<dx:ASPxButton runat="server" ID="Button2" ClientInstanceName="Button2" AutoPostBack="false" Text="Button2">
						<ClientSideEvents Click="OnClickButton2" />
					</dx:ASPxButton>
					<dx:ASPxButton runat="server" ID="Button3" ClientInstanceName="Button3" AutoPostBack="false" Text="Button3">
						<ClientSideEvents Click="OnClickButton3" />
					</dx:ASPxButton>
				</dx:PopupControlContentControl>
			</ContentCollection>
		</dx:ASPxPopupControl>
	</form>
</body>
</html>