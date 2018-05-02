
param(
[string]$URL = $(Throw "'-URL' argument is mandatory"),    
[string]$chat_id = $(Throw "'-chat_id' argument is mandatory"),
[string]$text = $(Throw "'-text' argument is mandatory")
)

$payload = @{
    "channel" = $chat_id;
    "text" = $text;
    "username" = "Mr. Robot";
}

Write-Host "Аргумент URL: $URL" 

Invoke-WebRequest `
	-Body (ConvertTo-Json -Compress -InputObject $payload) `
	-Method Post `
    -ContentType "application/json;charset=utf-8" `
-Uri $URL | Out-Null