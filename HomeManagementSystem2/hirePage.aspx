<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="hirePage.aspx.cs" Inherits="HomeManagementSystem2.hirePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/button1.css" rel="stylesheet"/>
    <p style="font-size:x-large;font-family:\5FAE\8F6F\96C5\9ED1,Microsoft YaHei; height: 31px; margin-bottom: 0px;margin-top: 5px">
        &nbsp;&nbsp;
        ��д������Ϣ (���¾�Ϊ����)
        <hr style="height: -12px"/>
    </p>
    <table border="0" style="width: 558px">
    <tr style="height: 20px; width: 720px;">
        <td><strong>С������</strong></td> 
        <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </tr>
    <tr style="height: 10px; width: 717px;">
        <td><strong>���ⷽʽ</strong></td>
        <td class="auto-style2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="2">
                <asp:ListItem Text="����"></asp:ListItem>
                <asp:ListItem Text="����"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr style="height: 11px; width: 718px;">
        <td><strong>���׻���</strong></td> 
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" Width="24px"></asp:TextBox>
            ��
            <asp:TextBox ID="TextBox3" runat="server" Width="24px"></asp:TextBox>
            ��
            <asp:TextBox ID="TextBox4" runat="server" Width="24px"></asp:TextBox>
            ��
        </td>
    </tr>
    <tr style="height: 18px; width: 725px;">
        <td>&nbsp;&nbsp;<strong>&nbsp; ���</strong>&nbsp;</td> 
        <td class="auto-style2"><asp:TextBox ID="TextBox5" runat="server" Width="39px"></asp:TextBox>&nbsp;ƽ��</td>
    </tr>
    <tr style="height: 18px; width: 728px;">
        <td>&nbsp;&nbsp;<strong>&nbsp; ¥��</strong>&nbsp;</td>
        <td class="auto-style2">��&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="24px"></asp:TextBox>&nbsp;��</td>
    </tr>
    <tr style="height: 18px; width: 727px;">
        <td><strong>�������</strong></td>
        <td class="auto-style2">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="��Ԣ"></asp:ListItem>
            <asp:ListItem Text="�Ϲ���"></asp:ListItem>
            <asp:ListItem Text="������"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
            <asp:ListItem Text="�Ƶ깫Ԣ"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Text="ë��"></asp:ListItem>
            <asp:ListItem Text="��ͨװ��"></asp:ListItem>
            <asp:ListItem Text="��װ��"></asp:ListItem>
            <asp:ListItem Text="����װ��"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Text="��"></asp:ListItem>
            <asp:ListItem Text="��"></asp:ListItem>
            <asp:ListItem Text="��"></asp:ListItem>
            <asp:ListItem Text="��"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
    <tr style="height: 18px; width: 728px;">
        <td>&nbsp;&nbsp;<strong>&nbsp; ���</strong>&nbsp; </td>
        <td class="auto-style2"><asp:TextBox ID="TextBox7" runat="server" Width="42px"></asp:TextBox>&nbsp;Ԫ/��</td>
    </tr>
    <tr style="height: 10px; width: 736px;">
        <td><strong>��������&nbsp;</strong></td>
        <td class="auto-style2">
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatColumns="6" RepeatRows = "2" RepeatDirection="Horizontal" RepeatLayout="Table" Width="437px" Height="36px">
            <asp:ListItem Text="��"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
            <asp:ListItem Text="�յ�"></asp:ListItem>
            <asp:ListItem Text="����"></asp:ListItem>
            <asp:ListItem Text="ϴ�»�"></asp:ListItem>
            <asp:ListItem Text="��ˮ��"></asp:ListItem>
            <asp:ListItem Text="���"></asp:ListItem>
            <asp:ListItem Text="������"></asp:ListItem>
            <asp:ListItem Text="����������"></asp:ListItem>
            <asp:ListItem Text="��̨"></asp:ListItem>
        </asp:CheckBoxList>
        </td>
    </tr>
    </table>
    <p>
        <asp:Button ID="Button_Next" class ="button blue" runat="server" Text="��һ��" Height="35px"  OnClick="Button_Next_Click"/>
    </p>
</asp:Content>