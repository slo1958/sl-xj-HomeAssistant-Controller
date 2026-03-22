#tag Class
Protected Class clExtractPostgres
Inherits clExtractBase
	#tag Method, Flags = &h0
		Sub Constructor(NewConnectInfo as clHADBConnectionInfo)
		  
		  self.Connectinfo = NewConnectInfo
		  
		  self.ExtractDataQuery = "SELECT      st.metadata_id ,    mean, min, max, last_reset, state, sum "_
		  + ",    to_char(to_timestamp(st.created_ts), 'yyyy-mm-dd HH24:MI'::text) AS created_as_char   "_
		  + ",    extract(timezone from to_timestamp(st.created_ts)) AS created_timezone  "_
		  + ",    to_char(to_timestamp(st.created_ts), 'yyyy-mm-dd'::text) AS created_date_as_char   "_
		  + ",    to_char(to_timestamp(st.created_ts), 'HH24:MI'::text) AS created_time_as_char   "_
		  + ",    to_char(to_timestamp(st.start_ts), 'yyyy-mm-dd HH24:MI'::text) AS start_as_char   "_
		  + ",    to_char(to_timestamp(st.last_reset_ts), 'yyyy-mm-dd HH24:MI'::text) AS last_reset_as_char  "_
		  + ",    to_char(to_timestamp(st.created_ts), 'yyyy-mm'::text) AS created_yearmonth_as_char   "_
		  + ",    to_char(to_timestamp(st.created_ts), 'yyyy'::text) AS created_year_as_char   "_
		  + " FROM public.""statistics"" st   "
		  
		  self.ExtractMetadataQuery = "SELECT id AS  metadata_id, statistic_id, unit_of_measurement, has_mean, has_sum "_
		  + " FROM public.statistics_meta"
		  
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
			EditorType=""
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
