#tag Class
Protected Class clHAEntityState
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
		    System.DebugLog("Cannot parse JSON:" + JSONStr)
		    
		    Return
		    
		  end try
		  
		  self.UpdateFromJSON(js)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DumpToLog(JSONSrc as JSONItem)
		  
		  System.DebugLog(JSONSrc.ToString)
		  
		  Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindEntityStatus(entityIDToFind as string, list() as clHAEntityState) As clHAEntityState
		  
		  for each r as clHAEntityState in list
		    
		    if r.entityId = entityIDToFind then return r
		    
		  next
		  
		  return nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TranslateDateTime(sourceStr as string) As DateTime
		  
		  // 2025-12-18T12:29:27.385665+00:00
		  
		  if sourceStr.IndexOf("T") > 0 and sourceStr.IndexOf(".") > sourceStr.IndexOf("T") and sourceStr.IndexOf("+") > sourceStr.IndexOf(".")  then
		    
		    var tmp0() as string = sourceStr.Split("T")
		    var tmp1() as String = tmp0(1).Split(".")
		    var tmp2() as string = tmp1(1).Split("+")
		    
		    var tmpDate as string = tmp0(0)
		    var tmpTime as string = tmp1(0)
		    var tmpOffset as String = tmp2(1)
		    
		    var tmpDateSrc as String =  tmpDate + " "+ tmpTime
		    
		    try
		      return  DateTime.FromString(tmpDateSrc, nil, new TimeZone("GMT"))
		      
		    Catch
		      return nil
		      
		    end try
		    
		  end if
		  
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateFromJSON(js as JSONItem)
		  
		  var kStep as integer = -1
		  
		  try 
		    self.entityId = js.value("entity_id")
		    
		    kStep = 0
		    if js.HasKey("state") then self.state = js.value("state")
		    
		    kStep = 1
		    if js.HasKey("attributes") then
		      var js1 as JSONItem = js.value("attributes")
		      
		      kStep = 3
		      if js1.HasKey("friendly_name") then self.friendlyName = js1.Value("friendly_name")
		      
		      kStep = 4
		      if js1.HasKey("device_class") then self.deviceClass = js1.Value("device_class")
		      
		    end if
		    
		    kStep = 5
		    if js.HasKey("last_reported") then self.lastReported = js.Value("last_reported")
		    
		    kStep = 6
		    if js.HasKey("last_changed") then self.lastChanged = js.Value("last_changed")
		    
		    kStep = 7
		    if js.HasKey("last_updated") then self.lastUpdated = js.Value("last_updated")
		    
		  catch
		    System.DebugLog("Catch exception at " + kStep.ToString + " when parsing " + js.ToString)
		    
		  end try
		  
		  Return 
		End Sub
	#tag EndMethod


	#tag Note, Name = Untitled
		
		{
		        "entity_id":"switch.small_bedroom_switch_0",
		        "state":"off",
		        "attributes":{
		                   "friendly_name":"Small bedroom Switch 0"
		                    },
		        "last_changed":"2025-08-13T15:40:38.687439+00:00",
		        "last_reported":"2025-08-13T16:12:42.187999+00:00",
		        "last_updated":"2025-08-13T15:40:38.687439+00:00",
		        "context":{
		                    "id":"01K2J1EAWZ9AEH2SXE3NB3NGBM","parent_id":null,"user_id":null
		                    }
		}
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		deviceClass As String
	#tag EndProperty

	#tag Property, Flags = &h0
		entityId As string
	#tag EndProperty

	#tag Property, Flags = &h0
		extraInformation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		friendlyName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lastChanged As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lastReported As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lastUpdated As string
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
			Name="entityId"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="friendlyName"
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
		#tag ViewProperty
			Name="deviceClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastUpdated"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="extraInformation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
