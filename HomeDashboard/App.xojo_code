#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() As String)
		  var fs as FolderItem = FindServerInfo
		  var ts as TextInputStream 
		  
		  ServerConnectionFIle = fs
		  
		  if fs = nil then Return
		  
		  try
		    ts = TextInputStream.Open(fs)
		    
		  Catch
		    
		    Return
		    
		  end try
		  
		  try
		    var js as JSONItem = new JSONItem(ts.ReadAll)
		    
		    if js.HasKey("url") then ServerURL = js.Value("url")
		    
		    if js.HasKey("token") then ServerToken = js.Value("token")
		    
		    
		  catch
		    
		    
		  end try
		  
		  
		  ts.Close
		  
		  return
		End Sub
	#tag EndEvent


	#tag Note, Name = HA API Documentation
		Source:
		https://developers.home-assistant.io/docs/api/rest/
	#tag EndNote


	#tag Property, Flags = &h0
		ServerConnectionFIle As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ServerToken As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ServerURL As String
	#tag EndProperty


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
