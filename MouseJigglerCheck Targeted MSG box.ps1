param ($compname, $computer=".")

$compname = Read-Host -Prompt "Target Computer Name:"
Add-Type -AssemblyName PresentationCore,PresentationFramework

# If no host defined, localhost used, defined as "."

if ($null -eq $compname -or $compname -eq "" -or $compname -eq " ") {
    $computer = "."
    $rptEndpoint = "Localhost"
} else {
    if ($compname -eq "localhost") {
        $computer = "."
        $rptEndpoint = "Localhost"
    } else {
        $computer = $compname
        $rptEndpoint = $computer
    }
}

write-host "Target Machine: $rptEndpoint"
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageboxTitle = “ALERT”
$MessageIcon = [System.Windows.MessageBoxImage]::Warning

if ($compname = $env:COMPUTERNAME){
$m1 = Invoke-Command -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -processname "move mouse"} 
$m2 = Invoke-Command -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "automousemover"}
$m3 = Invoke-Command -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "caffeinated"}
$m4 = Invoke-Command -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "mousejiggler"}
if ($null -ne $m1){
    $Messageboxbody1 = “Unauthorized software alert! Move Mouse detected”
    [System.Windows.MessageBox]::Show($Messageboxbody1,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -ne $m2){
    $Messageboxbody2 = "Unauthorized software alert! AutoMouseMover detected"
    [System.Windows.MessageBox]::Show($Messageboxbody2,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -ne $m3){
    $Messageboxbody3 = "Unauthorized software alert! Caffeinated detected"
    [System.Windows.MessageBox]::Show($Messageboxbody3,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -ne $m4){
    $Messageboxbody4 = "Unauthorized software alert! MouseJiggler detected"
    [System.Windows.MessageBox]::Show($Messageboxbody4,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -eq $m1){
    if ($null -eq $m2){
        if ($null -eq $m3){
            if ($null -eq $m4){
                [System.Windows.MessageBox]::Show("No violations detected.","Alert",$ButtonType,$MessageIcon)
            }
        }
    }
}
}
if ($compname -ne $env:COMPUTERNAME){
$m1 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -processname "move mouse"} 
$m2 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "automousemover"}
$m3 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "caffeinated"}
$m4 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "mousejiggler"}
if ($null -ne $m1){
    $Messageboxbody1 = “Unauthorized software alert! Move Mouse detected”
    [System.Windows.MessageBox]::Show($Messageboxbody1,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -ne $m2){
    $Messageboxbody2 = "Unauthorized software alert! AutoMouseMover detected"
    [System.Windows.MessageBox]::Show($Messageboxbody2,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -ne $m3){
    $Messageboxbody3 = "Unauthorized software alert! Caffeinated detected"
    [System.Windows.MessageBox]::Show($Messageboxbody3,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -ne $m4){
    $Messageboxbody4 = "Unauthorized software alert! MouseJiggler detected"
    [System.Windows.MessageBox]::Show($Messageboxbody4,$MessageboxTitle,$ButtonType,$messageicon)
}
if ($null -eq $m1){
    if ($null -eq $m2){
        if ($null -eq $m3){
            if ($null -eq $m4){
                [System.Windows.MessageBox]::Show("No violations detected.","Alert",$ButtonType,$MessageIcon)
            }
        }
    }
}
}
