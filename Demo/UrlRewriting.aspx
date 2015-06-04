<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UrlRewriting.aspx.cs"  MetaDescription="该示例演示在使用AspNetPager的url分页方式时重写url。" Inherits="UrlRewriting_Default" MasterPageFile="AspNetPager.master" Title="Url重写"%>
<asp:Content runat="server" ContentPlaceHolderID="desc">
    需要设置的相关属性有：<strong>EnableUrlRewriting="true" UrlRewritePattern="urlrewriting/page_{0}.aspx"</strong>。
<div class="text-danger">注意：设置EnableUrlRewriting="true"将自动设置UrlPaging="true"（默认为false），无需再单独设置该属性的值。</div>
</asp:Content>
<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
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
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" width="100%" ShowPageIndexBox="Always"
        EnableUrlRewriting="true" UrlRewritePattern="urlrewriting/page_{0}.aspx" FirstPageUrlRewritePattern="urlrewriting.aspx" OnPageChanged="AspNetPager1_PageChanged" NumericButtonTextFormatString="-{0}-"></webdiyer:aspnetpager>
    
</asp:Content>