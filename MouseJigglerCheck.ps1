Import-Module ActiveDirectory
# FILL OUT YOUR INFO!
$to_email = ""
$from_email = ""
$smtp_relay = ""
# Customize to your liking. You can use `n to include a line break
$body = "An automated check has detected possible use of automated mouse movement software.`nPlease investigate this report to verify the user is actively working per company policy."
ForEach ($Computer in (Get-ADComputer -filter 'OperatingSystem -notlike "*server*"').Name){
    $m1 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -processname "move mouse"} 
    $m2 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "automousemover"}
    $m3 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "caffeinated"}
    $m4 = Invoke-Command -ComputerName $Computer -ScriptBlock {Get-Process -ErrorAction SilentlyContinue -ProcessName "mousejiggler"}
    if ($null -ne $m1){
        $subject1 = "Unauthorized software alert! Move Mouse detected"
        Write-Host($subject1 + " on " + $Computer)
        Send-MailMessage -to $to_email -from $from_email -Body $body -Subject $subject1 -SmtpServer $smtp_relay
    }
    if ($null -ne $m2){
        $subject2 = "Unauthorized software alert! AutoMouseMover detected"
        Write-Host($subject2 + " on " + $Computer)
        Send-MailMessage -to $to_email -from $from_email -Body $body -Subject $subject2 -SmtpServer $smtp_relay
    }
    if ($null -ne $m3){
        $subject3 = "Unauthorized software alert! Caffeinated detected"
        Write-Host($subject3 + " on " + $Computer)
        Send-MailMessage -to $to_email -from $from_email -Body $body -Subject $subject3 -SmtpServer $smtp_relay
    }
    if ($null -ne $m4){
        $subject4 = "Unauthorized software alert! MouseJiggler detected"
        Write-Host($subject4 + " on " + $Computer)
        Send-MailMessage -to $to_email -from $from_email -Body $body -Subject $subject4 -SmtpServer $smtp_relay
    }
}

