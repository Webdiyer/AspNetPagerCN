<%@ Page Language="C#" MasterPageFile="AspNetPager.master" AutoEventWireup="true"  MetaDescription="该示例演示如何在用户控件中使用AspNetPager分页控件来对DataList控件进行分页。" CodeFile="UserControl.aspx.cs" Inherits="UserControl_Default" Title="在用户控件中使用AspNetPager" %>

<%@ Register Src="PagerControl.ascx" TagName="PagerControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
    <uc1:PagerControl ID="PagerControl1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="PostBack" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>
</asp:Content>

