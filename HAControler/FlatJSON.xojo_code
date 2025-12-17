#tag Module
Protected Module FlatJSON
	#tag Method, Flags = &h21
		Private Function Flat1(js as JSONItem, prefix as String) As Dictionary
		  var d as new Dictionary
		  
		  
		  
		  if js.IsArray then
		    var jsc as integer = js.count
		    
		    d.value(FlatKey(prefix, "count"))  = jsc
		    
		    for i as integer = 0 to jsc - 1
		      var item as variant = js.ValueAt(i)
		      
		      if item isa JSONItem then
		        
		        var d1 as Dictionary = Flat1(item, FlatKey(prefix, str(i)))
		        
		        for each k2 as string in d1.keys
		          d.value(k2) = d1.value(k2)
		          
		        next
		        
		        
		      else
		        d.value(FlatKey(prefix, str(i))) = js.ValueAt(i)
		        
		      end if
		    next
		    
		  else
		    for each k as string in js.keys
		      var item as variant  = js.Value(k)
		      
		      if item isa JSONItem then
		        var d1 as Dictionary = Flat1(item, FlatKey(prefix, k))
		        
		        for each k2 as string in d1.keys
		          d.value(k2) = d1.value(k2)
		          
		        next
		        
		        
		      else
		        d.Value(FlatKey(prefix, k)) = js.Value(k)
		        
		        
		        
		      end if
		      
		    next
		  end if
		  
		  return d
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FlatKey(prefix as string, key as string) As string
		  if prefix.Length = 0 then
		    return key
		    
		  else
		    return prefix + ":" + key
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFlatJSON(JSONToFlatten as string) As Dictionary
		  
		  
		  try
		    var js as new JSONItem(JSONToFlatten)
		    
		    return  flat1(js,"")
		    
		  Catch
		    return nil
		    
		  end Try
		  
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
