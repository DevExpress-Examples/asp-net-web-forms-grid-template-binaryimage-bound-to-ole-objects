<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>Untitled Page</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
                    DataSourceID="AccessDataSource1" EnableRowsCache="False">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Description" />
                        <dx:GridViewDataTextColumn Caption="Image" FieldName="Image" >
                            <DataItemTemplate>
                                <dx:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server" 
                                    Value='<%# ConvertOleObjectToByteArray(Eval("Image")) %>' />
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/E1414.mdb"
                    SelectCommand="SELECT [Image], [Description] FROM [Images]" />
            </div>
        </form>
    </body>
</html>
