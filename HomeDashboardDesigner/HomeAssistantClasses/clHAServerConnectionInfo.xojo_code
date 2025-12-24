#tag Class
Protected Class clHAServerConnectionInfo
	#tag Method, Flags = &h0
		Shared Function FindServerInfo() As FolderItem
		  var fs as FolderItem = app.ExecutableFile
		  var fn as string = "HAServer.txt"
		  
		  for i as integer = 1 to 4
		    fs = fs.parent
		    
		    if fs = nil then Return fs
		    
		    if fs.Child(fn).Exists then
		      return fs.Child(fn)
		      
		    end if
		    
		  next
		  
		  return fs
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ServerToken As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ServerURL As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ServerToken"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ServerURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
