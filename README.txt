open from within powershell

NOTE: you may have to change execution policy to run this script. To do so in Powershell type:

	Set-ExectutionPolicty unrestricted

Then type the path of the script to launch it
It will prompty you for the path of where you want to search - 
Type the fullpath i.e.
		
			C:\Users\xxx2345\Desktop
				or
			\\unclecreamy2\dump$\newFolder


Make sure the folder exists before doing so


Then you will be prompted for the various filetypes you are searching for. Enter them like so:

			*.mp3 or *.pdf

Hit enter after each filetype. When you are done type "break" (all lowercase, no spaces) and hit enter

then you will be asked for a path to output the results in a csv. Enter like this:

		C:\Users\sdf1234\Desktop\

The script will display "DONE" when it has finished searching all subfolders of the initial 
path you gave it.


