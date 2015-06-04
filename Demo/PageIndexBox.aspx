<%@ Page Language="C#" MasterPageFile="AspNetPager.master" AutoEventWireup="true" MetaDescription="该示例演示如何使用AspNetPager分页控件的输入或选择页索引功能。"  CodeFile="PageIndexBox.aspx.cs" Inherits="PageIndexBox_Default" Title="使用页索引框" %>
<asp:Content runat="server" ContentPlaceHolderID="desc">相关属性设置：ShowPageIndexBox="Always或Auto" PageIndeBoxType="DropDownList或TextBox"（默认值为 TextBox）</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
        <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2" Width="100%">
        <ItemStyle Width="50%"/>
<ItemTemplate>
订单编号：<%#DataBinder.Eval(Container.DataItem,"orderid")%>&nbsp;&nbsp;&nbsp;&nbsp;
订单日期：<font color="red"><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></font><br>
公司名称：<%#DataBinder.Eval(Container.DataItem,"companyname")%><br>
雇员姓名：<%#DataBinder.Eval(Container.DataItem,"employeename")%><br>
<hr>
</ItemTemplate>
        </asp:DataList>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="转到第" TextAfterPageIndexBox="页"  PageSize="10"
        width="100%"></webdiyer:aspnetpager>
    <asp:RadioButtonList ID="rbl_boxtype" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_boxtype_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow">
    <asp:ListItem>文本框输入</asp:ListItem>
    <asp:ListItem Selected="true">下拉框选择</asp:ListItem>
    </asp:RadioButtonList>
</asp:Content>

