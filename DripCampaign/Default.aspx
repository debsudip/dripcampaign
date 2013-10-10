<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DripCampaign.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>
            Configure the Temporary Registered Product CDO</h4>
        <p>
    </div>
    <table>
        <tr>
            <td>
                <asp:ListBox ID="list1" runat="server" Height="325px" Width="244px" 
                    SelectionMode="Multiple">
                    <asp:ListItem>PRODUCT_SERIAL_NUMBER</asp:ListItem>
                    <asp:ListItem>PURCHASE_DATE</asp:ListItem>
                    <asp:ListItem>RETAILER_NAME</asp:ListItem>
                    <asp:ListItem>PML_PRODUCT_MODEL_NUMBER</asp:ListItem>
                    <asp:ListItem>REGISTRATION_CHANNEL</asp:ListItem>
                    <asp:ListItem>GROUPNAME</asp:ListItem>
                    <asp:ListItem>GROUPCODE</asp:ListItem>
                    <asp:ListItem>CATEGORYNAME</asp:ListItem>
                    <asp:ListItem>CATEGORYCODE</asp:ListItem>
                    <asp:ListItem>SUBCATEGORYNAME</asp:ListItem>
                    <asp:ListItem>SUBCATEGORYCODE</asp:ListItem>
                    <asp:ListItem>LOCALE</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
            </td>
            <td>
                <asp:Button ID="btnRight" runat="server" Text="&gt;&gt;" 
                    onclick="btnRight_Click" style="font-weight: 700" /><br />
                <br />
                <asp:Button ID="btnLeft" runat="server" Text="&lt;&lt;" onclick="btnLeft_Click" 
                    style="font-weight: 700; height: 26px" />
            &nbsp;</td>
            <td>
                <asp:ListBox ID="list2" runat="server" Height="314px" Width="231px"></asp:ListBox>
            </td>
        </tr>
    </table>
   
      
            <br />
&nbsp;<asp:Button ID="btnProcess" runat="server" Text="Process" Width="190px" 
        style="font-weight: 700" />
       
    </form>
</body>
</html>
