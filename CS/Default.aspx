<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/E1414.mdb"
            SelectCommand="SELECT [Image], [Description] FROM [Images]"></asp:AccessDataSource>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
            DataSourceID="AccessDataSource1" EnableRowsCache="False">
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="0">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn Caption="Image" FieldName="Image" Name="Image" VisibleIndex="1">
                    <DataItemTemplate>
                        <dxe:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server" Value='<%# ConvertOleObjectToByteArray(Eval("Image")) %>'>
                        </dxe:ASPxBinaryImage>
                    </DataItemTemplate>
                </dxwgv:GridViewDataTextColumn>
            </Columns>
        </dxwgv:ASPxGridView>
    
    </div>
    </form>
</body>
</html>
