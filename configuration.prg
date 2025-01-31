' ***************
' Configuration

' Data calibrations to be used in the model run - file names are space-separated and found inside data\calibration
' Example: to run the NEW, NR_AS_G and NR_AS_G_WS calibrations, use "NEW NR_AS_G NR_AS_G_WS"
%calibrations = "FRA_AME"

' Shocks to run, filenames are space-separated and found inside data\shocks
' Example: to run the SCEN_AMS2, use "SCEN_AMS2"
%shocks = "SCEN_AMS2" 

' Set the begining of the sample
%firstdate = "2004"
' Input the base year used for the calibration
%baseyear = "2006"
' Set the end of the sample
%lastdate = "2050"
' Set the end of the graph sample
%lastdate_graph = "2050"

' List of model extension to be run (master, hybrid, IO, etc.)
%ModelVersion = "hybrid"

' Set "realist" for simulating a realistic reference scenario; something else for a stationary  reference scenario
%ref = "realist"


' ****************
' Output options

' Set to "yes" to save table & graphs
%save = "ys"
' Set to "yes" to close output windows after run
%close = "ys"
' Set to "yes" to save worfiles
%savewf = "ys"

' Set "yes" for running shock scenario
%run_shock = "yes"


' ********************
' Additional options

%modelname = "a_3ME"
' Set frequency ("a" : annual; "q" quarterly)
%freq = "a"
' Set "new" for loading the data and the specification of the model; something else for loading an existing workfile
%load = "new"
' Set "u0, u1,... " for user options; "d" diagnostic option; something else for default option
%solveopt = "u0"
' Set "g0, g1,... " for user options; "" for no graph   3MEBLOCK
%graphopt = "ADEME"
' Set "t0, t1,... " for user options; "" for no table  VAR_MESANGE
'VAR_MESANGE"
%tabopt = ""
' Set the threshold under which the value is rounded to zero.
!round0 = 1.0E-10


