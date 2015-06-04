<%@ Page Title="使用Table布局" Language="C#" MetaDescription="该示例演示使用AspNetPager分页控件的Table布局，而非默认的Div布局，使用Table布局可以确保自定义信息区文本内容、页索引按钮、页索引输入或选择框以及页索引导航链接文本等对齐方式保持整齐一致。"  MasterPageFile="AspNetPager.master" AutoEventWireup="true" CodeFile="TableLayout.aspx.cs" Inherits="TableLayout_Default" %>

<asp:Content runat="server" ContentPlaceHolderID="desc">相关属性设置：<b>LayoutType="Table"</b></asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="main">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="订单编号" />
                <asp:BoundField DataField="orderdate" HeaderText="订单日期" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="公司名称" />
                <asp:BoundField DataField="employeename" HeaderText="雇员姓名" />
            </Columns>
        </asp:GridView>
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
            showcustominfosection="Right" CustomInfoHTML="总记录数：%RecordCount%，总页数：%PageCount%，当前为第%CurrentPageIndex%页" urlpaging="True" width="100%" LayoutType="Table" ShowNavigationToolTip="true" UrlPageIndexName="pageindex"></webdiyer:aspnetpager>
        
    </asp:Content>


