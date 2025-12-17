#tag Module
Protected Module Module1
	#tag Method, Flags = &h0
		Function FindServerInfo() As FolderItem
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
	#tag EndViewBehavior
End Module
#tag EndModule
