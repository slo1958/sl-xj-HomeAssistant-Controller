#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() As String)
		  
		  UpdateServerInfo
		   
		  return
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ServerToken() As string
		  
		  if self.Server = nil then return ""
		  
		  return me.Server.ServerToken
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ServerURL() As string
		  
		  if self.Server = nil then return ""
		  
		  Return me.Server.ServerURL
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateServerInfo()
		  
		  
		  var ts as TextInputStream 
		  var sv as new clHAServerConnectionInfo
		  
		  var fs as FolderItem = sv.FindServerInfo
		  
		  ServerConnectionFIle = fs
		  
		  if fs = nil then Return
		  
		  try
		    ts = TextInputStream.Open(fs)
		    
		  Catch
		    
		    Return
		    
		  end try
		  
		  try
		    var js as JSONItem = new JSONItem(ts.ReadAll)
		    
		    if js.HasKey("url") then sv.ServerURL = js.Value("url")
		    
		    if js.HasKey("token") then sv.ServerToken = js.Value("token")
		    
		    
		  catch
		    
		    
		  end try
		  
		  ts.Close
		  
		  app.Server = sv
		  
		  return 
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = HA API Documentation
		Source:
		https://developers.home-assistant.io/docs/api/rest/
	#tag EndNote


	#tag Property, Flags = &h0
		Server As clHAServerConnectionInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		ServerConnectionFIle As FolderItem
	#tag EndProperty


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
