#tag Class
Protected Class clSelectedEntity
	#tag Method, Flags = &h0
		Shared Sub AddEntity(EntityName as string, entities() as clSelectedEntity)
		  
		  for each z as clSelectedEntity in entities
		    if z.entityName = EntityName then return
		    
		  next
		  
		  var z as new clSelectedEntity(EntityName)
		  entities.Add(z)
		  
		  Return
		  
		  // clSelectedEntity()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Name as string)
		  
		  self.entityName = Name
		  self.entityStatus = nil
		  self.entityIndex = IndexCounter
		  
		  IndexCounter = IndexCounter + 1
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetAllEntityStatus(entities() as clSelectedEntity) As clHAEntityState()
		  var st() as clHAEntityState
		  
		  
		  for each e as clSelectedEntity in entities
		    st.Add(e.entityStatus)
		    
		  next
		  
		  return st
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetAllLinkedDots(entities() as clSelectedEntity) As clDotOnMap()
		  
		  var st() as clDotOnMap
		  
		  for each e as clSelectedEntity in entities
		    st.Add(e.dot)
		    
		  next
		  
		  return st
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetTestEntities() As string()
		  
		  // Return array ("MS04-Office")
		  
		  Return array("binary_sensor.ms04_office_occupancy"_
		  ,"sensor.sk05_laundry_voltage" _
		  ,"switch.sk11_tortoise_switch" _
		  )
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub linkDot(pDot as clDotOnMap)
		  
		  self.dot = pDot
		  
		  self.dot.entityIndex = self.entityIndex
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub RefreshAllEntityStatus(hac as clHAController, entities() as clSelectedEntity)
		  
		  for each e as clSelectedEntity in entities
		    e.refreshEntityStatus(hac)
		    
		  next
		  
		  Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub refreshEntityStatus(hac as clHAController)
		  
		  entityStatus =  hac.GetEntityStatusAsEntity(self.entityName)
		  
		  return
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dot As clDotOnMap
	#tag EndProperty

	#tag Property, Flags = &h0
		entityIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		entityName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		entityStatus As clHAEntityState
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared IndexCounter As Integer = 0
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
			Name="entityName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="entityIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
