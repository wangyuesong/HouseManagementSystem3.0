<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jingjiren_main.aspx.cs" Inherits="HomeManagementSystem2.Jingjiren_main" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="css/Label.css"  rel="stylesheet" type="text/css" />
     <link href="css/Wrapper.css"  rel="stylesheet" type="text/css" />
      <link href="css/Button.css"  rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <div  class="wrapper-border-grey">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img  src="Resources/10.jpg" />
            </div>
        <div class="wrapper-border-grey">
            <asp:Label ID="Tips" runat="server" Text="" CssClass="DescriptionLabel-centeralign"></asp:Label>
            <br />
        </div>
        </div>
    </form>
</body>
</html>
