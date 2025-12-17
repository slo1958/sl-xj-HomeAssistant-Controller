#tag Class
Protected Class cl_HAEntity
	#tag Method, Flags = &h0
		Sub Constructor(JSONSrc as JSONItem)
		  
		  self.UpdateFromJSON(JSONSrc)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(JSONStr as String)
		  
		  var js as JSONItem = nil
		  
		  try
		    js = new JSONItem(JSONStr)
		    
		  catch
		    Return
		    
		  end try
		  
		  self.UpdateFromJSON(js)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateFromJSON(js as JSONItem)
		  
		  try 
		    self.EntityID = js.value("entity_id")
		    if js.HasKey("state") then self.state = js.value("state")
		    
		    if js.HasKey("attributes") then
		      var js1 as JSONItem = js.value("attributes")
		      
		      if js1.HasKey("friendly_name") then self.FriendlyName = js1.Value("friendly_name")
		      if js1.HasKey("last_reported") then self.lastReported = js1.Value("last_reported")
		      if js1.HasKey("last_changed") then self.lastChanged = js1.Value("last_changed")
		      
		    end if
		    
		  catch
		    
		  end try
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Untitled
		
		{"entity_id":"switch.small_bedroom_switch_0","state":"off","attributes":{"friendly_name":"Small bedroom Switch 0"},"last_changed":"2025-08-13T15:40:38.687439+00:00","last_reported":"2025-08-13T16:12:42.187999+00:00","last_updated":"2025-08-13T15:40:38.687439+00:00","context":{"id":"01K2J1EAWZ9AEH2SXE3NB3NGBM","parent_id":null,"user_id":null}}
	#tag EndNote


	#tag Property, Flags = &h0
		EntityID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FriendlyName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lastChanged As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lastReported As string
	#tag EndProperty

	#tag Property, Flags = &h0
		State As string
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
			Name="EntityID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FriendlyName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastChanged"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastReported"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
