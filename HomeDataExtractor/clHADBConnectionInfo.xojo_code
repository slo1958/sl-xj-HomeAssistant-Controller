#tag Class
Protected Class clHADBConnectionInfo
	#tag Method, Flags = &h0
		Sub Constructor()
		  // 
		  // try to find file with credentials
		  //
		   
		  
		  self.mHADatabaseServer = "localhost"
		  
		  var fld as FolderItem = FindSourceFile()
		  
		  if fld <> nil then ProcessSourceFIle(fld)
		  
		  Return
		   
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FindSourceFile() As FolderItem
		  
		  var mx as integer = 10
		  
		  var fld as FolderItem = app.ExecutableFile.Parent
		  
		  while not fld.Child(SourceFIleName).Exists and mx > 0
		    fld = fld.Parent
		    mx = mx - 1
		    
		  wend
		  
		  if mx <= 0 then fld = nil else fld = fld.Child(sourceFileName)
		  
		  Return fld
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HADatabaseName() As string
		  
		  return mHADatabaseName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HADatabasePassword() As string
		  
		  return mHADatabasePassword
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HADatabaseServer() As string
		  
		  return mHADatabaseServer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HADatabaseType() As string
		    
		  return mHADatabaseType
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HADatabaseUser() As string
		  
		  return mHADatabaseUser
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessSourceFIle(fld as FolderItem)
		  var txtin as TextInputStream = TextInputStream.Open(fld)
		  
		  while not txtin.EndOfFile
		    var srcLine as string = txtin.ReadLine
		    var srcElems() as string = srcLine.Split("=")
		    
		    if srcElems.Count = 2 then
		      var k as string = srcElems(0).Trim
		      var v as string = srcElems(1).trim
		      
		      select case k
		      case "type"
		        self.mHADatabaseType = v
		        
		      case "server"
		        self.mHADatabaseServer = v
		        
		      case "db"
		        self.mHADatabaseName = v
		        
		      case "user"
		        self.mHADatabaseUser = v
		        
		      case "pwd"
		        self.mHADatabasePassword = v
		        
		      case else
		        
		      end select
		      
		    end if
		    
		  wend
		  
		  txtin.close
		  
		  Return
		End Sub
	#tag EndMethod


	#tag Note, Name = About dbsource.txt
		Create a file named dbsource.txt and update its links in the project before compiling
		
		#type=sqlite
		type=postgresql
		server=url or ip address of db server
		db=name of the database
		user=username
		pwd=password
		
		Example:
		#type=sqlite
		type=postgresql
		server=raspberrypi03.local
		db=homeassistant_db01
		user=homeassistant
		pwd=xxxxx
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private mHADatabaseName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHADatabasePassword As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHADatabaseServer As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHADatabaseType As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHADatabaseUser As String
	#tag EndProperty


	#tag Constant, Name = sourceFileName, Type = , Dynamic = False, Default = \"dbsource.txt", Scope = Public
	#tag EndConstant


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
End Class
#tag EndClass
