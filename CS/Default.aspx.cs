using System;
using System.Web.UI;

public partial class _Default : Page {
    protected void Button1_Click(object sender, EventArgs e) {
        Label.Text = "Button1 is clicked";
    }
    protected void Popup_WindowCallback(object source, DevExpress.Web.PopupWindowCallbackArgs e) {
        Label.Text = "Button2 is clicked";
    }
}