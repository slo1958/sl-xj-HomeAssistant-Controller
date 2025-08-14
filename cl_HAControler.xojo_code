#tag Class
Protected Class cl_HAControler
	#tag Method, Flags = &h0
		Sub Constructor(theServerURL as string)
		  
		  self.serverUrl = theServerURL
		  self.traceMode = False
		  
		  api_test_results = SendRequest("/api/","")
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableTraceMode()
		  self.traceMode = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableTraceMode()
		  self.traceMode = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAllEntities() As string
		  
		  var requestString as string = "/api/states"
		  
		  Return self.SendRequest(requestString,"")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAllEntitiesAsEntities() As cl_HAEntity()
		  
		  var tempReply as string = GetAllEntities()
		  
		  var js as JSONItem
		  
		  var ret() as cl_HAEntity
		  
		  try
		    js = new JSONItem(tempReply)
		    
		  Catch
		    Return ret
		    
		  end try
		  
		  
		  if js.IsArray then
		    var jsc as integer = js.count
		     
		    for i as integer = 0 to jsc - 1
		      var item as variant = js.ValueAt(i)
		      
		      if item isa JSONItem then   ret.Add(new cl_HAEntity(JSONItem(item)))
		      
		    next
		    
		  else
		    
		  end if
		  
		  return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEntityHistory(EntityID as string) As string
		  
		  var requestString as string = "/api/history/period?filter_entity_id=" + EntityID
		  
		  Return self.SendRequest(requestString,"")
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEntityStatus(EntityID as string) As string
		  
		  var requestString as string = "/api/states/" + EntityID
		  
		  Return self.SendRequest(requestString,"")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEntityStatusAsEntity(EntityID as string) As cl_HAEntity
		  var ret as cl_HAEntity
		  
		  var tempReply as string = GetEntityStatus(EntityID)
		  
		  ret = new cl_HAEntity(tempReply)
		  
		  return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetToken() As string
		  var k as String = HAToken.trim
		  
		  return k
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SendRequest(endPoint as string, requestJSON as string) As string
		  
		  var c as new URLConnection
		  var tempURL as string = self.serverUrl 
		  
		  if tempURL.Right(1) <> "/ " and endPoint.left(1) <> "/" then tempURL =  tempURL + "/"
		  
		  tempURL = tempURL + endPoint
		  
		  self.lastRequestStatus = 0
		  self.lastRequestReply = ""
		  
		  if self.traceMode then System.DebugLog(tempURL)
		  
		  c.RequestHeader("Authorization") = "Bearer " + GetToken()
		  c.RequestHeader("content-type") = "application/json"
		  
		  try
		    
		    if requestJSON.Length = 0 then 
		      self.lastRequestReply = c.SendSync("get", tempURL, 60)
		      self.lastRequestStatus = c.HTTPStatusCode
		      
		    else
		      c.SetRequestContent(requestJSON, "application/json")
		      self.lastRequestReply = c.SendSync("post", tempURL, 60)
		      self.lastRequestStatus = c.HTTPStatusCode
		      
		    end if
		    
		  catch
		     
		    
		  end try
		  
		  if self.traceMode then 
		    System.DebugLog("HTTP Status: " + str(self.lastRequestStatus))
		    
		    System.DebugLog(self.lastRequestReply)
		    
		  end if
		  
		  return lastRequestReply
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		api_test_results As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastRequestReply As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastRequestStatus As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private serverUrl As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private traceMode As Boolean
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
			Name="api_test_results"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
