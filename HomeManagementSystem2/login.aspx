<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HomeManagementSystem2.login" %>

<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/signin-css.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/js-login.js"></script>

  </head>
  <body>
     <form id="form1" runat="server">
    <div class="span12">
      <div class="row sign-card">
        <div class="welcome span4"></div>
          <img src="img/anjuke.png"/><div class="span4">
              <div class="form-signin">
                      <%-- <form class="form-signin">--%>
           <%-- <input type="text" class="span3" placeholder="�û���">
            <input type="text" class="span3" placeholder="����">--%>
              <asp:TextBox ID="TB_Log_UserAccount" runat="server" CssClass="span3" Width="221px" placeholder="�û���"></asp:TextBox>
              <asp:TextBox ID="TB_Log_UserPassword" runat="server" CssClass="span3" placeholder="����" Width="221px"></asp:TextBox>
            <label class="checkbox">
              <input type="checkbox"> ��ס�� </input>
              <span>-</span>
              <a href=""> �������� </a>
            </label>
           <%-- <button class="btn btn-primary btn-large">��½</button>--%>
              <asp:Button ID="BTN_Login" runat="server" Text="��¼" CssClass="btn btn-primary btn-large" OnClick="BTN_Login_Click" />
            <a href="#register-card" id="to-reg-card"> ���ע�� </a>
        <%--  </form>--%>
        &nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
        </div>
              </div> 
        <div class="span4 hide" id="register-card">
         
            <p class="field-name">�û���(����):</p>
          <%--  <input type="text" class="span3">--%>
              <asp:TextBox ID="TB_Reg_UserEmail" runat="server" CssClass="span3"></asp:TextBox>
           
            <p class="field-name">����:</p>
           <%-- <input type="text" class="span3">--%>
              <asp:TextBox ID="TB_Reg_UserPassword" runat="server" CssClass="span3"></asp:TextBox>
        
            <p class="field-name">����ȷ��:</p>
           <asp:TextBox ID="TB_Reg_UserPasswordConfirm" runat="server" CssClass="span3"></asp:TextBox>
         
            <p class="field-name">����:</p>
              <asp:TextBox ID="TB_Reg_UserName" runat="server" CssClass="span3"></asp:TextBox>
              
               <p class="field-name">�ֻ�:</p>
              <asp:TextBox ID="TB_Reg_UserPhone" runat="server" CssClass="span3"></asp:TextBox>
              
                 <p class="field-name">���֤��:</p>
              <asp:TextBox ID="TB_Reg_UserIdentityNumber" runat="server" CssClass="span3"></asp:TextBox>
           <%-- <button class="btn btn-warning btn-large">ע��</button>--%>
              <asp:Button ID="BTN_Register" runat="server" Text="ע��"  CssClass="btn btn-warning btn-large" OnClick="BTN_Register_Click"/>
          </div>
             </form>
     

    

  </body>

</html>