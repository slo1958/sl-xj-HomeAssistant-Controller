#tag Class
Protected Class clExtractBase
	#tag Method, Flags = &h0
		Function GetMetaData() As RowSet
		  
		  return runQuery(self.ExtractMetadataQuery)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStatistics(selectedYear as string, selectedYearMonth as string, selectedID as string) As RowSet
		  
		  var whereClause as String
		  
		  var whereArr() as string
		  
		  if selectedYear.trim.Length = 4 then
		    whereArr.Add(replace("(created_year_as_char= '$')", "$",selectedYear.trim))   
		    
		  end if
		  
		  if selectedYearMonth.trim.Length = 7 then
		    whereArr.Add(replace("(created_yearmonth_as_char= '$')", "$",selectedYearMonth.trim))   
		    
		  end if
		  
		  if selectedID.trim.Length > 0 then
		    whereArr.Add(replace("(metadata_id= $)", "$", selectedID))
		    
		  end if
		  
		  whereClause = String.FromArray(whereArr, " and ")
		  
		  if whereClause.Length > 0 then
		    whereClause = " Where " +whereClause
		    
		  end if
		  
		  return runQuery(self.ExtractDataQueryOnStart + whereClause)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function runQuery(sourceSQL as string) As RowSet
		  
		  Self.WriteErrorMessage("Cannot run query against generic db")
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteErrorMessage(msg as String)
		  
		  System.DebugLog(msg)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteInformationMessage(msg as String)
		  
		  System.DebugLog(msg)
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Connectinfo As clHADBConnectionInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		ExtractDataQueryOnCreated As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ExtractDataQueryOnStart As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ExtractMetadataQuery As String
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
			Name="ExtractDataQueryOnCreated"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtractMetadataQuery"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
