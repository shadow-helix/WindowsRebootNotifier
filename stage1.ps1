#
# To be run on all systems under the system context
#  in order to register the custom Notification App
#
    $HKCR = Get-PSDrive -Name HKCR -ea SilentlyContinue
    If (!($HKCR)){
        New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT -Scope Script
    }
    $appName = "Your.IT.Dept"
    $appDisplayName = "Your IT Department"
    $appRegPath = "HKCR:\AppUserModelId"
    $regPath = "$AppRegPath\$appName"
    $showInSettings = "0"
    If (!(Test-Path $RegPath)){
        New-Item -Path $appRegPath -Name $appName -Force | Out-Null
        New-ItemProperty -Path $regPath -Name IconUri -Value "C:\Windows\ImmersiveControlPanel\images\logo.png" -PropertyType ExpandString -Force | Out-Null
    }
    $displayName = Get-ItemProperty -Path $regPath -Name DisplayName -ea SilentlyContinue | Select-Object -exp DisplayName -ea SilentlyContinue
    If ($displayName -ne $appDisplayName){
        New-ItemProperty -Path $regPath -Name DisplayName -Value $appDisplayName -PropertyType String -Force | Out-Null
    }
    $showInSettingsValue = Get-ItemProperty -Path $regPath -Name ShowInSettings -ea SilentlyContinue | Select-Object -exp ShowInSettings -ea SilentlyContinue
    If ($showInSettingsValue -ne $showInSettings){
        New-ItemProperty -Path $regPath -Name ShowInSettings -Value $showInSettings -PropertyType DWORD -Force | Out-Null
    }
    Remove-PSDrive -Name HKCR -Force
