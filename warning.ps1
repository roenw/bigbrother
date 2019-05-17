Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning 
$balloon.BalloonTipText = 'You are using a secured computing environment. Your usage is being monitored.'
$balloon.BalloonTipTitle = "System Alert" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip(5000)