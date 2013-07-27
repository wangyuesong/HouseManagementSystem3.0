<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="SellHouse_first.aspx.cs" Inherits="HomeManagementSystem2.SellHouse_first" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="AutoCompleteExtra" Namespace="AutoCompleteExtra" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Wrapper.css" rel="stylesheet" type="text/css" />
    <link href="css/Button.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper-border-green">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            &nbsp;<asp:Image ID="Image5" runat="server" Height="42px" ImageUrl="~/Resources/20130727192851_4102.png" Width="412px" />
        </p>
        <p>
            &nbsp;&nbsp;
       
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;
                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="Xiaoqu" CompletionSetCount="4"
                    CompletionInterval="100" ServiceMethod="GetSearchTerms"
                    ServicePath="~/AutoCompleteService.asmx" MinimumPrefixLength="1">
                </asp:AutoCompleteExtender>
                        <asp:Label ID="Label1" runat="server" Text="小区名称:"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="Xiaoqu" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                 <asp:Label ID="XiaoquTips" ClientIDMode="Static" runat="server" Text="Label"></asp:Label>

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>

                </asp:UpdatePanel>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>




            <p>
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="房型:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Shi" runat="server"></asp:TextBox>
                &nbsp;室 
        <asp:TextBox ID="Ting" runat="server"></asp:TextBox>
                &nbsp;厅 
        <asp:TextBox ID="Wei" runat="server"></asp:TextBox>
                &nbsp;卫
            </p>
            <p>
                &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="面积:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Mianji" runat="server"></asp:TextBox>
                &nbsp;平方米
            </p>
            <p>
                &nbsp;&nbsp; 期望售价:&nbsp;
                <asp:TextBox ID="Jiage" runat="server"></asp:TextBox>
                &nbsp;万元
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" CssClass="colorbutton orange" runat="server"
            Height="36px" OnClick="Button1_Click" Text="我要卖房" Width="210px" />
            </p>
    </div>

</asp:Content>