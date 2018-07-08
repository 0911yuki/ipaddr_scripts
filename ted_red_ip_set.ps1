# 設定するIPアドレスなどを指定
$devicename = ""
$ip = "10.245.41.2"
$subnet = "255.255.0.0"

# 設定するアダプター指定
$adapter = Get-WmiObject Win32_NetworkAdapterConfiguration | Where {$_.Description -eq $devicename} | Out-Null
# IPアドレスとサブネットマスクを設定
$adapter.EnableStatic($ip,$subnet)

# 設定されているか確認
gwmi Win32_NetworkAdapterConfiguration | Where {$_.Description -eq $devicename}

Pause

Exit

