<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UrlPaging.aspx.cs" MetaDescription="该示例演示如何使用AspNetPager分页控件通过Url进行分页。"  Inherits="UrlPaging_Default" MasterPageFile="AspNetPager.master" Title="Url分页"%>

<asp:Content runat="server" ContentPlaceHolderID="desc">相关属性设置：<strong>UrlPaging="true"</strong></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="main">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="订单编号" />
                <asp:BoundField DataField="orderdate" HeaderText="订单日期" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="公司名称" />
                <asp:BoundField DataField="employeename" HeaderText="雇员姓名" />
            </Columns>
        </asp:GridView>
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
            showcustominfosection="Right" urlpaging="True" width="100%" ShowNavigationToolTip="true" UrlPageIndexName="pageindex"></webdiyer:aspnetpager>
        
    </asp:Content>
