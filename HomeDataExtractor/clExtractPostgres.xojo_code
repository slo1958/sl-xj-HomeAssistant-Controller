#tag Class
Protected Class clExtractPostgres
Inherits clExtractBase
	#tag Method, Flags = &h0
		Sub Constructor(NewConnectInfo as clHADBConnectionInfo)
		  
		  self.Connectinfo = NewConnectInfo
		  
		  var temp as string = "SELECT      st.metadata_id ,    mean, min, max, last_reset, state, sum, mean_weight  "_
		  + ",    to_char(to_timestamp(st.$_ts), 'yyyy-mm-dd HH24:MI'::text) AS datetime_as_char   "_
		  + ",    extract(timezone from to_timestamp(st.$_ts)) AS datetime_timezone  "_
		  + ",    to_char(to_timestamp(st.$_ts), 'yyyy-mm-dd'::text) AS datetime_date_as_char   "_
		  + ",    to_char(to_timestamp(st.$_ts), 'HH24:MI'::text) AS datetime_time_as_char   "_
		  + ",    to_char(to_timestamp(st.last_reset_ts), 'yyyy-mm-dd HH24:MI'::text) AS last_reset_as_char  "_
		  + ",    to_char(to_timestamp(st.$_ts), 'yyyy-mm'::text) AS datetime_yearmonth_as_char   "_
		  + ",    to_char(to_timestamp(st.$_ts), 'yyyy'::text) AS datetime_year_as_char   "_
		  + ",    '$' as datetime_type " _
		  + " FROM public.""statistics"" st   "
		  
		  
		  self.ExtractDataQueryOnCreated = temp.ReplaceAll("$", "created")
		  self.ExtractDataQueryOnStart =  temp.ReplaceAll("$", "start")
		  
		  //id, created, "start", mean, min, max, last_reset, state, sum, metadata_id, created_ts, start_ts, last_reset_ts, mean_weight
		  
		  
		  self.ExtractMetadataQuery = "SELECT id AS  metadata_id " _ 
		  +  ", statistic_id " _
		  +  ", unit_of_measurement " _
		  +  ", name " _
		  +  ", unit_class " _
		  +  ", has_mean " _
		  +  ", has_sum "_
		  +  ", mean_type" _
		  +  ", source" _
		  +  " FROM public.statistics_meta"
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function runQuery(sourceSQL as string) As RowSet
		  Var db As New PostgreSQLDatabase
		  
		  db.Host = Connectinfo.HADatabaseServer
		  db.Port = 5432
		  db.DatabaseName = Connectinfo.HADatabaseName
		  db.UserName = Connectinfo.HADatabaseUser
		  db.Password = Connectinfo.HADatabasePassword
		  
		  Try
		    db.Connect
		    ' Use the database
		  Catch error As DatabaseException
		    ' DB Connection error
		    WriteErrorMessage("Connection error: " + error.Message)
		    
		    Return nil
		    
		  End Try
		  
		  Var rowsFound As RowSet
		  
		  Try
		    rowsFound = db.SelectSQL(sourceSQL)
		    
		  Catch error As DatabaseException
		    
		    WriteErrorMessage("Query error: " + error.Message)
		    return nil
		    
		  End Try
		  
		  Return rowsFound
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="ExtractMetadataQuery"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtractDataQuery"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
