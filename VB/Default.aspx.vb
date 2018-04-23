Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Text

Namespace WebApplication1
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Private Const BITMAP_ID_BLOCK As String = "BM"
		Private Const JPG_ID_BLOCK As String = ChrW(&H00FF) & ChrW(&H00D8) & ChrW(&H00FF)
		Private Const PNG_ID_BLOCK As String = ChrW(&H0089) & "PNG" & Constants.vbCrLf & ChrW(&H001a) & Constants.vbLf
		Private Const GIF_ID_BLOCK As String = "GIF8"
		Private Const TIFF_ID_BLOCK As String = "II*" & ChrW(&H0000)
		Private Const DEFAULT_OLEHEADERSIZE As Integer = 78
		Public Shared Function ConvertOleObjectToByteArray(ByVal content As Object) As Byte()
			If content IsNot Nothing AndAlso Not(TypeOf content Is DBNull) Then
				Dim oleFieldBytes() As Byte = CType(content, Byte())
				Dim imageBytes() As Byte = Nothing
				' Get a UTF7 Encoded string version
				Dim u8 As Encoding = Encoding.UTF7
				Dim strTemp As String = u8.GetString(oleFieldBytes)
				' Get the first 300 characters from the string
				Dim strVTemp As String = strTemp.Substring(0, 300)
				' Search for the block
				Dim iPos As Integer = -1
				If strVTemp.IndexOf(BITMAP_ID_BLOCK) <> -1 Then
					iPos = strVTemp.IndexOf(BITMAP_ID_BLOCK)
				ElseIf strVTemp.IndexOf(JPG_ID_BLOCK) <> -1 Then
					iPos = strVTemp.IndexOf(JPG_ID_BLOCK)
				ElseIf strVTemp.IndexOf(PNG_ID_BLOCK) <> -1 Then
					iPos = strVTemp.IndexOf(PNG_ID_BLOCK)
				ElseIf strVTemp.IndexOf(GIF_ID_BLOCK) <> -1 Then
					iPos = strVTemp.IndexOf(GIF_ID_BLOCK)
				ElseIf strVTemp.IndexOf(TIFF_ID_BLOCK) <> -1 Then
					iPos = strVTemp.IndexOf(TIFF_ID_BLOCK)
				End If
				' From the position above get the new image
				If iPos = -1 Then
					iPos = DEFAULT_OLEHEADERSIZE
				End If
				'Array.Copy(
				imageBytes = New Byte(oleFieldBytes.LongLength - iPos - 1){}
				Dim ms As New MemoryStream()
				ms.Write(oleFieldBytes, iPos, oleFieldBytes.Length - iPos)
				imageBytes = ms.ToArray()
				ms.Close()
				ms.Dispose()
				Return imageBytes
			End If
			Return Nothing
		End Function
	End Class
End Namespace