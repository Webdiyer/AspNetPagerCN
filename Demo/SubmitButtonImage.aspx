<%@ Page Title="使用图片提交按钮" Language="C#" MetaDescription="该示例演示如何使页索引提交按钮使用自定义图片。"  MasterPageFile="AspNetPager.master" AutoEventWireup="true" CodeFile="SubmitButtonImage.aspx.cs" Inherits="SubmitButtonImage_Default" %>

<asp:Content runat="server" ContentPlaceHolderID="desc">相关属性设置：<b>SubmitButtonImageUrl="路片相对路径"</b></asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="main">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="订单编号" />
                <asp:BoundField DataField="orderdate" HeaderText="订单日期" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="公司名称" />
                <asp:BoundField DataField="employeename" HeaderText="雇员姓名" />
            </Columns>
        </asp:GridView>
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
         ShowPageIndexBox="Always" SubmitButtonImageUrl="images/go.jpg" ShowCustomInfoSection="Left" CustomInfoHTML="共%PageCount%页 %RecordCount%条记录"
         SubmitButtonStyle="width:32px;height:22px;vertical-align:bottom" CustomInfoTextAlign="Left" urlpaging="True" width="100%" LayoutType="Table" ShowNavigationToolTip="true" UrlPageIndexName="pageindex"></webdiyer:aspnetpager>
        
    </asp:Content>

