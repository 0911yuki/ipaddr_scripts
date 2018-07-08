# 設定するIPアドレスなどを指定
$devicename = ""

# 設定するアダプター指定
$adapter = Get-WmiObject Win32_NetworkAdapterConfiguration | Where {$_.Description -eq $devicename} 
# IPアドレスとサブネットマスクを設定
$adapter.EnableDHCP()

# 設定されているか確認
gwmi Win32_NetworkAdapterConfiguration | Where {$_.Description -eq $devicename}

Pause

Exit
