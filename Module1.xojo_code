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


End Module
#tag EndModule
