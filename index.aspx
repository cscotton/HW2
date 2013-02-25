<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Net Pay Calculator</div>
    <p>
        Please enter hourly wage:</p>
    <p>
        <asp:TextBox ID="wageTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Please enter hours worked this week:</p>
    <p>
        <asp:TextBox ID="hoursTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Please enter any pre-tax deductions:</p>
    <p>
        <asp:TextBox ID="preTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Please enter any after-tax deductions:</p>
    <p>
        <asp:TextBox ID="afterTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="calculateButton" runat="server" Text="Calculate" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="clearButton" runat="server" Text="Clear" />
    </p>
    <p>
        Employee Net Take Home Pay: 
        <asp:Label ID="netLabel" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
