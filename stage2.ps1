#
# To be run under the user context
# Displays toast notification reminding
#   the user to restart their laptop
#
$heroBase64 = ""
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
