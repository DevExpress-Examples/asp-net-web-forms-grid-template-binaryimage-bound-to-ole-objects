<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128538006/24.2.1%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1414)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Grid View for ASP.NET Web Forms - How to use ASPxBinaryImage to bind a field that contains image data stored as OLE objects

If your data source contains images in a custom format (for instance, OLE Objects), the ASPxGridView control cannot bind data automatically. Follow the steps below to display the images in the grid:

1. Create [DataItemTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.GridViewDataColumn.DataItemTemplate) for an image column.
1. Place the [ASPxBinaryImage](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxBinaryImage) control in the template.
1. Write a function to transform images from your format to an array of bytes.
1. Use a custom binding expression to bind the [ASPxBinaryImage.Value](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxBinaryImage.Value) property to the transformed data.

```aspx
<dx:GridViewDataTextColumn Caption="Image" FieldName="Image" >
    <DataItemTemplate>
        <dx:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server" 
            Value='<%# ConvertOleObjectToByteArray(Eval("Image")) %>' />
    </DataItemTemplate>
</dx:GridViewDataTextColumn>
```

## Files to Review

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))

## Online Demo
* [Grid -- Binary Image Column Editing](https://demos.devexpress.com/ASPxGridViewDemos/GridEditing/BinaryImageColumnEditing.aspx)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-template-binaryimage-bound-to-ole-objects&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-template-binaryimage-bound-to-ole-objects&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
