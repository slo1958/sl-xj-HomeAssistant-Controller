#tag Module
Protected Module Module1
	#tag Method, Flags = &h0
		Sub Export(entities() as cl_HAEntity)
		  var fs as FolderItem = SpecialFolder.Desktop.Child("HomeAssistant_Controller_Entities.csv")
		  var tt as TextOutputStream = TextOutputStream.Create(fs)
		  
		  var tempTitle() as String
		  
		  tempTitle.Add("entity_id")
		  tempTitle.Add("state")
		  tempTitle.Add("friendly_name")
		  tempTitle.Add("last_reported")
		  tempTitle.Add("last_changed")
		  
		  tt.WriteLine(join(tempTitle,","))
		  
		  for each tempEnt as cl_HAEntity in entities
		    var v() as string
		    
		    v.Add(tempEnt.EntityID)
		    v.Add(tempEnt.State)
		    v.Add(tempEnt.FriendlyName)
		    v.Add(tempEnt.lastReported)
		    v.Add(tempEnt.lastChanged)
		    
		    tt.WriteLine(join(v, ","))
		    
		  next 
		  
		  tt.Close
		  
		  
		End Sub
	#tag EndMethod

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
