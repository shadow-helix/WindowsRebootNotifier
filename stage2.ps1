#
# To be run under the user context
# Displays toast notification reminding
#   the user to restart their laptop
#
$heroBase64 = "/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAC0AWwDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9IKKKK/TD+ewooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA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p8cyaI3w3js4zoo0cXA1H7PdS3C/v/OTysmUqf3b8Cvrmitq0FVqRrT+KMuZf4u/47bGVHFVaXP7N2504vzT3X/DankH7bP7EXgX9vn4Kz+CPHdrctZ+ct3ZX1nII7zS7hQVE0LlWAO1mUhlKkMQRXxN4Z/4N4PFOm6MPCV/+1f8WLj4X7DA3hWySa1hMB6x/NdyQY65/wBHxz0r9OKK5Z4DDzm6ko6vffX1Wz+fTQ68NnGMw9P2VKdorbRO3pdO3yPib9lT/gib4O/Y1/bYtvip4I8QzWOgWXh86JB4aksDJIZWjRJLqS8M2XZyrOV8octgEKAtfLP/AAWiutS/b/8A+Cnfwv8A2WbZtA8N6bbLHfz6/dWUct8JJoJJpVikPzhBDEAsKsoklK7ydqFf1/r5T/4KHf8ABIP4Z/8ABRLVdO1/XLjWvC3jbR4Bb2mv6NIizNGrFkjmR1KyKrMzKRtcE8PjiuTG4Fyp04Uo3jGfM43tde82r/4mn20suh35Vm3LipV8VNqTg4xna/K7JJtdbK67u+vc+cov+DXP4V6PAw0j4o/FfTZJF/eMtzZ7XI+6SFgXgZPGe/UV5x/wTO+JvxQ/Y/8A+CvGsfsxy/EzUfi18P4befzZrt3nGkslp9pVk3u5t2VyIZERyhZ+VDfd9Sh/4IR/GWSL+z7r9t74wz+H2BjfTlS+UNEc4TJ1Jk9M/Jg+gr6X/YB/4JS/C3/gnb/ad/4Si1bWvFWtxCDUPEGtTpPfSx7t5iTaqpHGXAYhVyxVNzNtUhYXCSjio1Yw5IpO6vfmurLRO2m/5HTi8zpvCVKNat7ZyS5fdtyu6967Se3TZ9TtP21v2Efhz+358Ll8LfELSpLmO1kafTtRs5BDqGlSkYLwSkEDIxlWDI2F3Kdox8P6Z/wbr+NPA1u2keD/ANrb4m+GfB+9tmjQ2c4VY2JypMV9FGSVwCfKAJycc4r9Q6K655fh51HVlHV77q/rbf5nj4bOMZQpqlTn7q2TSdvS6dvkfMP/AAT1/wCCUPw4/wCCc8us6l4Yu/EPiDxT4jhWDU9a1m6EksyBt5RERVRFL/NyGcnGWNfT1FFdkUoxUI6JbHDWrVK1R1arvJ7thRRRTMgooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD/2Q=="
$heroImagePath = "$env:TEMP\HeroPicture.png"
[byte[]]$heroBytes = [convert]::FromBase64String($heroBase64)
[System.IO.File]::WriteAllBytes($heroImagePath,$heroBytes)

[Windows.Data.Xml.Dom.XmlDocument, Windows.Data, ContentType=WindowsRuntime]
$rebootThreshold = 14
$lastRebootDays = ((Get-Date) - (Get-ciminstance Win32_OperatingSystem | Select-Object -exp LastBootUpTime)).Days
$daysRemaining = $rebootThreshold - $lastRebootDays

if($daysRemaining -lt 1){
    $txtAutoRebootNotification = "at 7pm tonight."
} else {
    $txtAutoRebootNotification = "in $daysRemaining days."
}

[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

[xml]$ToastContent = @"
<toast scenario="reminder">
    <visual>
        <binding template="ToastGeneric">
            <image placement="hero" src="$($env:TEMP)\HeroPicture.png" />
        <text>System Maintenance</text>
        <group>
            <subgroup>     
                <text hint-style="body" hint-wrap="true" >Your laptop has not been restarted in $lastRebootDays days. To ensure smooth performance, please restart your laptop at your earliest convenience.</text>
            </subgroup>
        </group>
		<group>				
			<subgroup>     
				<text hint-style="body" hint-wrap="true">An automatic restart will occur $txtAutoRebootNotification</text>								
			</subgroup>				
		</group>
        </binding>
    </visual>
    <actions>
        <action activationType="protocol" arguments="Dismiss" content="Dismiss" />
    </actions>	
</toast>
"@

$SerializedXml = New-Object Windows.Data.Xml.Dom.XmlDocument
$SerializedXml.LoadXml($ToastContent.OuterXml)

$Toast = [Windows.UI.Notifications.ToastNotification]::new($SerializedXml)
$Toast.Tag = "Your IT Department"
$Toast.Group = "Your IT Department"
$Toast.ExpirationTime = [DateTimeOffset]::Now.AddMinutes(1)

$Notifier = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier("Your.IT.Dept")
$Notifier.Show($Toast);
