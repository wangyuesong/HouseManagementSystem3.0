<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="SellHouse_forth.aspx.cs" Inherits="HomeManagementSystem2.SellHouse_forth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Label.css"  rel="stylesheet" type="text/css" />
     <link href="css/Wrapper.css"  rel="stylesheet" type="text/css" />
      <link href="css/Button.css"  rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:Label ID="Label1" runat="server" CssClass="NotificationLabel" Text="恭喜，您的房源已经成功申请上架"></asp:Label>
    <br />
    <br />
     <div style="margin:0px auto" class="wrapper-border-grey" >
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Jiben" runat="server" Text="Label" CssClass="DescriptionLabel-centeralign"></asp:Label><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Peizhi" runat="server" Text="Label" CssClass="DescriptionLabel-centeralign"></asp:Label><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Detail" runat="server" Text="Label" CssClass="DescriptionLabel-centeralign"></asp:Label>
    </div>
    <br />
 
    <div style="margin:0px auto" class="wrapper-border-orange">
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="在这里写下你给经纪人的留言吧：" CssClass="DescriptionLabel"></asp:Label>
        （140字以内)<br />
        &nbsp;<asp:TextBox ID="LeaveMessage" runat="server" TextMode="MultiLine" Height="60px" Width="703px"></asp:TextBox>
         <br />
        &nbsp;<asp:Button ID="Button1" runat="server" Text="留言" CssClass="colorbutton orange" Height="33px" Width="107px" OnClick="Button1_Click" />
         <br />
    </div>
    <br />
    <div style="margin:0px auto" class="wrapper-border-orange">
       
                     &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="上传几张图片介绍一下您的爱居吧" CssClass="DescriptionLabel-orange"></asp:Label>
        &nbsp;<br />
&nbsp;<div class="Image_Gallery"  runat="server" id="Image_Gallery"> 
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Image ID="Image5" runat="server" Height="81px" ImageUrl="~/Resources/20130727160919_9631.png" Width="181px" />
&nbsp;&nbsp; 
            <asp:Image runat="server" Height="92px" ImageUrl="~/Resources/get (1).jpg" Width="104px" />
        &nbsp;
            <asp:Image ID="Image6" runat="server" Height="83px" ImageUrl="~/Resources/20130727160949_4127.png" Width="175px" />
        </div>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server"  Width="600px" CssClass=""/>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="UploadButton" runat="server" Text="上传" CssClass="colorbutton orange" Height="32px" OnClick="UploadButton_Click" Width="97px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                     <br />
&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Uploadtips" runat="server"></asp:Label>
        <br />
   
   
    </div>
&nbsp;
</asp:Content>
