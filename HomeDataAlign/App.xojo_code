#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Opening()
		  
		  var s1 as string = "2026-04-21T20:00:43Z"
		  var s2 as string = "2026-04-21T20:00:43+00:00"
		  
		  var v1 as variant = s1
		  var v2 as variant =s2
		  
		  
		  var d1 as DateTime = ConvertTimeUTC(s1)
		  var d2 as DateTime = ConvertTimeISO8601(s2)
		  
		  System.DebugLog(d1.ToString + " " + d2.ToString)
		  
		  return 
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ConvertTimeISO8601(s as string) As DateTime
		  
		  //
		  // Input string expected format:
		  //
		  // 2026-04-21T20:00:43+00:00
		  //
		  
		  if len(s) <> 25 then return nil
		  
		   if mid(s, 11,1) <> "T" then Return nil
		  if mid(s,20,1) <>"+" and mid(s,20,1) <>"-" then return nil 
		  
		  var datePart as string = mid(s,1,10)
		  var timePart as string = mid(s, 12,8)
		  var zonePart as string = mid(s, 20,6)
		  
		  // convert zonepart to seconds
		  var hours as integer = mid(zonePart, 2,2).tointeger
		  var minuts as integer =mid(zonePart, 5,2).toInteger
		  var sgn as integer = if(mid(zonePart,1,1)="-", -1, 1)  
		  
		  var zonePartSeconds as integer = (hours * 60 + minuts) * 60 * sgn
		  
		  var resultsUTC as  DateTime
		  resultsUTC = DateTime.FromString(datePart+" "+ timePart, nil, new TimeZone(zonePartSeconds))
		  
		  var results as new DateTime(resultsUTC.SecondsFrom1970, TimeZone.Current)
		  
		  Return results
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertTimeUTC(s as string) As DateTime
		  
		  //
		  // Input string expected format:
		  //
		  // 2026-04-21T20:34:12Z
		  //
		  
		  if len(s) <> 20 and len(s) <> 24 then return nil
		  
		  if mid(s, 11,1) <> "T" then Return nil
		  if right(s,1) <> "Z" then Return nil
		  
		  var datePart as string = mid(s,1,10)
		  var timePart as string = mid(s, 12,8)
		  // ignore millisec part
		  
		  var resultsUTC as  DateTime
		  resultsUTC = DateTime.FromString(datePart+" "+ timePart, nil, new TimeZone(0))
		  
		  var results as new DateTime(resultsUTC.SecondsFrom1970, TimeZone.Current)
		  
		  Return results
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProcessID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
