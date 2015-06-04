<%@ Page Language="C#" MasterPageFile="AspNetPager.master" AutoEventWireup="true" MetaDescription="该示例演示如何克隆AspNetPager分页控件的属性和事件处理程序。" CodeFile="Clone.aspx.cs" Inherits="Clone_Default" Title="克隆属性和事件" %>
<asp:Content runat="server" ContentPlaceHolderID="desc">
    只需设置一个AspNetPager分页控件的属性及事件处理程序，另一分页控件使用CloneFrom属性克隆此控件的属性及事件处理程序而无需重复设置属性及事件处理程序。<p>相关属性设置：<strong>CloneFrom="要克隆的AspNetPager分页控件的ID"</strong></p>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
            showcustominfosection="Left" urlpaging="True" width="100%" ShowNavigationToolTip="true" UrlPageIndexName="pageindex"></webdiyer:aspnetpager>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="订单编号" />
                <asp:BoundField DataField="orderdate" HeaderText="订单日期" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="公司名称" />
                <asp:BoundField DataField="employeename" HeaderText="雇员姓名" />
            </Columns>
        </asp:GridView>
        <webdiyer:AspNetPager runat="server" ID="AspNetPager2" CloneFrom="aspnetpager1"></webdiyer:AspNetPager>
</asp:Content>

