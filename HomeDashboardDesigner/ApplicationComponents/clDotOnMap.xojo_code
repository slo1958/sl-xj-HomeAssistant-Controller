#tag Class
Protected Class clDotOnMap
	#tag Method, Flags = &h0
		Sub Constructor()
		  self. cPointRadius  = 6
		  self.entityIndex = -1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function findPoint(x as double, y as double, points() as clDotOnMap) As clDotOnMap
		  
		  for each p as clDotOnMap in points
		    if p.x- p.cPointRadius <= x and x <= p.x + p.cPointRadius and p.y - p.cPointRadius <= y and y <= p.y + p.cPointRadius then
		      return p
		      
		    end if
		    
		  next
		  
		  return nil
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		cPointRadius As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		entityIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared testcounter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		x As double
	#tag EndProperty

	#tag Property, Flags = &h0
		y As double
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
			Name="x"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cPointRadius"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="entityIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
