<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1414)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to bind the ASPxBinaryImage to a field which contains image data stored as OLE object
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1414/)**
<!-- run online end -->


<p>This example is good when you have an Access database with a table, in which images are stored in columns of the Ole Object type. For instance, if you want to show data from this table in the ASPxGridView, Ole columns won't be recognized and no image data will be shown by default. To solve this problem you should customize the DataItem template for the image column and put the ASPxBinaryImage control there. Note that this control requires binary data (an array of bytes) to show images. Since we deal with OLE data, first we should  transform it to an array of bytes. I added a routine that does all the work and then bound the Value property of the ASPxBinaryImage to this method using a custom binding expression.</p><p><strong>See also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E2933">Inserting of a new row in ASPxGridView with the image preview enabled</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E95">Image Upload in ASPxGridView</a></p>

<br/>


