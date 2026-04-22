#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   458
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   74223615
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopLabel Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Files to process"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   13
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopListBox lbx_selectedfiles
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   200
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   45
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   386
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopRadioGroup rbg_outputoption
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   105
      Horizontal      =   False
      Index           =   -2147483648
      InitialValue    =   "One output file = one input file\nCombine files in single file\nCombine files in pivoted file\nOne output file for each sensor"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedIndex   =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   264
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   224
   End
   Begin DesktopButton btn_removefile
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Remove"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   426
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   225
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton btn_addfile
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Add"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   418
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   45
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopTextField txf_outputname
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   246
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "processed.csv"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   293
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   168
   End
   Begin DesktopButton btn_processfiles
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Go"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   418
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   416
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopLabel Label2
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Destination folder"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   417
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   147
   End
   Begin DesktopTextField txf_destinationFolder
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   179
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "processed.csv"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   416
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   227
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function getSelectedFiles() As FolderItem()
		  
		  var selection() as FolderItem
		  
		  for i as integer = 0 to lbx_selectedfiles.LastRowIndex 
		    
		    if lbx_selectedfiles.RowTagAt(i) isa FolderItem then
		      selection.Add(lbx_selectedfiles.RowTagAt(i))
		      
		    end if
		    
		  next
		  
		  Return selection
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function loadFile(file as FolderItem) As clDataTable
		  
		  // Load text file, comma separated, with header
		  
		  var data as new clDataTable(new clTextReader(file, True, new clTextFileConfig(",")))
		  
		  call data.AddColumn(new clStringDataSerie("Filename"))
		  
		  data.Column("Filename")=file.Name
		  
		  var lastchange as clStringDataSerie = clStringDataSerie(data.Column("last_changed"))
		  
		  var vmin as string = lastchange.Minimum
		  var vmax as string = lastchange.Maximum
		  
		  System.DebugLog("Loaded " + str(data.RowCount) +" rows from " + file.Name+ " minimum " + vmin + " maximum " + vmax)
		  
		  return data
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PickFileToProcess()
		  
		  Var dlg As New OpenFileDialog
		  
		  dlg.ActionButtonCaption = "Select Files"
		  dlg.CancelButtonCaption = "Cancel"
		  dlg.SuggestedFileName = ""
		  dlg.Title = "Select Files"
		  dlg.PromptText = "Select one or more files"
		  dlg.InitialFolder = SpecialFolder.UserHome.Child("Downloads")
		  dlg.AllowMultipleSelections = True
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  For Each file As FolderItem In dlg.SelectedFiles
		    lbx_selectedfiles.AddRow(file.name)
		    lbx_selectedfiles.RowTagAt(lbx_selectedfiles.LastAddedRowIndex) = file
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PivotDataset(dataset as clDataTable) As clDataTable
		  
		  var entityFieldValues() as string
		  var pivotColumns() as string
		  var retainColumns() as string
		  
		  entityFieldValues = VariantToString(dataset.StringColumn(EntityField).Unique)
		  
		  pivotColumns.Add(ConvValueField)
		  
		  retainColumns.add(ConvTimeField)
		  
		  var pTransformer as new clPivotTransformer(dataset, retainColumns, entityField, entityFieldValues, pivotColumns) 
		  
		  call pTransformer.Transform()
		  
		  var tr as clDataTable  = pTransformer.GetOutputTable()
		  
		  return tr
		  
		  
		  var s() as string = dataset.StringColumn(EntityField).UniqueAsString
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processSelectedFiles(inputfiles() as FolderItem, outputPath as FolderItem, groupingfieldname as string, pivotOnEntities as boolean)
		  
		  //
		  // Value expected in outputPath depends on the content of groupingFieldName
		  //
		  // If groupingFieldName is empty
		  // - All source files are concatenated
		  // - OutputPath containts the path to the file
		  //
		  // If groupingFieldName is not empty
		  // - A distinct output file is created for each distinct value in field groupingFieldname
		  // - OutputPath contains the path to the folder where the files are saved
		  //
		  
		  var SourceData as clDataTable = nil
		  var PreparedData as clDataTable
		  var OutputData as clDataTable
		  
		  var currentoutput as FolderItem = outputPath
		  var grpFieldValues() as variant
		  
		  var txConfig as new clTextFileConfig(chr(9))
		  txConfig.UseLocalFormatting = true
		  
		  //
		  // Load and combine all source files
		  //
		  for each inputfile as FolderItem in inputfiles
		    
		    var loadedData as clDataTable = loadFile(inputfile)
		    call loadedData.AddColumn(new clStringDataSerie(SourceField))
		    
		    loadedData.Column(SourceField)=inputfile.Name
		    
		    if sourcedata = nil then
		      SourceData = loadedData
		      
		    else
		      SourceData.AddTableData(loadedData)
		      
		    end if
		    
		  next
		  
		  //
		  // Update dataset
		  //
		   PreparedData = TransformDatasetBeforePIvot(SourceData)
		  
		  if pivotOnEntities then
		    PreparedData = PivotDataset(PreparedData)
		    
		  end if
		  
		  OutputData = TransformDatasetAfterPIvot(PreparedData)
		  
		  //
		  // Generate the output file(s)
		  //
		  if groupingfieldname.Length > 0 then
		    grpFieldValues = OutputData.StringColumn(groupingfieldname).Unique
		    
		    if not outputPath.Exists then
		      outputPath.CreateFolder
		      System.DebugLog("Created output folder " + outputPath.NativePath)
		      
		    end if
		    
		    
		    for each selFieldValue as string in grpFieldValues
		      var myOutputName as string = "Converted_" + selFieldValue
		      
		      if myOutputName.IndexOf(".csv") < 0 then myOutputName = myOutputName + ".csv"
		      
		      var myOutputFile as FolderItem = outputPath.Child(myOutputName)
		      var selectedRows() as integer = OutputData.FindAllMatchingRowIndexes(groupingfieldname, selFieldValue)
		      
		      OutputData.SaveSelectedRowsWithoutIndex(new clTextWriter(myOutputFile, true, txConfig), selectedRows)
		      
		    next
		    
		  else
		    OutputData.SaveWithoutIndex(new clTextWriter(outputPath, true, txConfig))
		    
		  end if
		  
		  Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSelectedFile()
		  
		  for i as integer = lbx_selectedfiles.LastRowIndex downto 0
		    if lbx_selectedfiles.RowSelectedAt(i) then
		      lbx_selectedfiles.RemoveRowAt(i)
		      
		    end if
		    
		  next
		  
		  Return
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TransformDatasetAfterPIvot(dataset as clDataTable) As clDataTable
		  
		  //
		  // Replace the timestamp (string) in UTC time with local time
		  //
		  // 2026-04-19T22:00:00.000Z
		  //
		  
		  //var tempTable as clDataTable = dataset.Sort(array(TimeField))
		  
		  //call tempTable.AddColumn(new clDateTimeDataSerie(ConvTimeField, tempTable.GetColumn(TimeField)))
		  
		  //return tempTable
		  
		  return dataset
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TransformDatasetBeforePIvot(dataset as clDataTable) As clDataTable
		  //
		  //
		  //
		  
		  // Sorting the dataset on time
		  var tempTable as clDataTable = dataset.Sort(array(TimeField))
		  
		  // Convert the Value field to number
		  call tempTable.AddColumn(new clNumberDataSerie(ConvValueField, tempTable.GetColumn(ValueField)))
		  
		  // Convert the time field to dateTime
		  call tempTable.AddColumn(new clDateTimeDataSerie(ConvTimeField, tempTable.GetColumn(TimeField)))
		  
		  return tempTable
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VariantToString(v() as Variant) As string()
		  var r() as string
		  
		  for each w as Variant in v
		    r.Add(w)
		    
		  next
		  
		  Return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteMessage(msg as string)
		  System.DebugLog(msg)
		  Return
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = ConvTimeField, Type = String, Dynamic = False, Default = \"conv_last_changed", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ConvValueField, Type = String, Dynamic = False, Default = \"conv_state", Scope = Public
	#tag EndConstant

	#tag Constant, Name = EntityField, Type = String, Dynamic = False, Default = \"entity_id", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SourceField, Type = String, Dynamic = False, Default = \"Filename", Scope = Public
	#tag EndConstant

	#tag Constant, Name = TimeField, Type = String, Dynamic = False, Default = \"last_changed", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ValueField, Type = String, Dynamic = False, Default = \"state", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events btn_removefile
	#tag Event
		Sub Pressed()
		  RemoveSelectedFile
		  
		  return
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_addfile
	#tag Event
		Sub Pressed()
		  
		  PickFileToProcess()
		  
		  return 
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_processfiles
	#tag Event
		Sub Pressed()
		  var list() as FolderItem
		  var output as FolderItem
		  var grpFieldname as string
		  var pivotOnEntities as boolean
		  list = getSelectedFiles
		  
		  
		  select case rbg_outputoption.SelectedIndex
		    
		  case 0 // individual files
		    output = new FolderItem(txf_destinationFolder.text.trim)
		    grpFieldname = SourceField
		    pivotOnEntities = False
		    
		  case 1 // combine output as flat file
		    output = new FolderItem(txf_destinationFolder.text.trim)
		    output = Output.Child(txf_outputname.Text.trim)
		    grpFieldname = ""
		    pivotOnEntities = False
		    
		  case 2 // combine and pivot
		    output = new FolderItem(txf_destinationFolder.text.trim)
		    output = Output.Child(txf_outputname.Text.trim)
		    grpFieldname = ""
		    pivotOnEntities = True
		    
		  case 3 // One file per sensor
		    output = new FolderItem(txf_destinationFolder.text.trim)
		    grpFieldname = EntityField
		    pivotOnEntities = False
		    
		  case else
		    output = nil
		    System.DebugLog("Error in option.")
		    Return
		    
		  end Select
		  
		  processSelectedFiles(list, output,grpFieldname, pivotOnEntities)
		  
		  MessageBox("Conversion completed.")
		  
		  Return
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txf_destinationFolder
	#tag Event
		Sub Opening()
		  
		  me.text = SpecialFolder.Desktop.child("Output").NativePath
		  
		  return 
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
