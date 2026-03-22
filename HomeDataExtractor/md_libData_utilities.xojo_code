#tag Module
Protected Module md_libData_utilities
	#tag Method, Flags = &h0
		Sub TableToListBox(sourceTable as clDataTable, targetListbox as desktopListBox, columns() as pair, columnWidths() as string)
		  
		  targetListbox.RemoveAllRows
		  targetListbox.ColumnCount = columns.Count
		  
		  targetListbox.RemoveAllRows
		  
		  if app.HAMetaData = nil then Return
		  
		  var colnames() as string
		  
		  targetListbox.HasHeader = true
		  
		  for i as integer = 0 to columns.LastIndex
		    targetListbox.HeaderAt(i) = columns(i).left
		    colnames.Add(columns(i).Right)
		    
		  next
		  
		  targetListbox.ColumnWidths = string.FromArray(columnWidths,",")
		  
		  for each r as clDataRow in app.HAMetaData
		    targetListbox.AddRow("")
		    var x as integer = targetListbox.LastAddedRowIndex
		    
		    for i as integer = 0 to  columns.LastIndex
		      if colnames(i).Length > 0 then targetListbox.CellTextAt(x, i) = r.cell(colnames(i))
		      
		    next
		    
		  next
		  
		  Return
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TableToListBox(sourceTable as clDataTable, targetListbox as desktopListBox, columns() as string, columnWidths() as string)
		  
		  var columnPairs() as pair
		  
		  for each s as string in columns
		    columnPairs.Add(s:s)
		    
		  next
		  
		  TableToListBox(sourceTable, targetListbox, columnPairs, columnWidths)
		  
		  return
		  
		End Sub
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
