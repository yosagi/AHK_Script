#SingleInstance, off
SetWorkingDir, %A_ScriptDir%
params := A_Args.Length()
Loop, %params%
{
    inFile := A_Args[A_Index]
    SplitPath, inFile,, inDir, inExt, inName
    Switch inExt
    {
        case "pptx","ppt","odp","powerpoint","powerpointx","powerpointm","pot","potm","potx","pps","ppsx","ppsm": ;powerpoint
            pptTopdf(inFile,inDir,inName)
        case "rtf","odt","doc","dot","docx","dotx","docm","dotm","txt","html","htm","wpd": ;word
            wrdTopdf(inFile,inDir,inName)
    }
}
pptTopdf(fPath,path,name){
    powerpoint := ComObjCreate("Powerpoint.Application")
    powerpoint := powerpoint.Presentations.Open(fPath,,,0)
    powerpoint.SaveAs( path . "\" . name . ".pdf" , 32 )
    powerpoint.Close()
}
wrdTopdf(fPath,path,name){
    word := ComObjCreate("Word.Application")
    word := word.Documents.Open(fPath,,,,,,,,,,,0)
    word.SaveAs2( path . "\" . name . ".pdf" , 17 )
    word.Close()
}