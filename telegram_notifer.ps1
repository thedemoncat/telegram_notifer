param(
[string]$token = $(Throw "'-token' argument is mandatory"),    
[string]$chat_id = $(Throw "'-chat_id' argument is mandatory"),
[string]$text = $(Throw "'-text' argument is mandatory"),
[switch]$markdown,
[switch]$nopreview
)

if($nopreview) { $preview_mode = "True" }
if($markdown) { $markdown_mode = "Markdown" } else {$markdown_mode = ""}

$payload = @{
    "chat_id" = $chat_id;
    "text" = $text
    "parse_mode" = $markdown_mode;
    "disable_web_page_preview" = $preview_mode;
}

Invoke-WebRequest `
    -Uri ("https://api.telegram.org/bot{0}/sendMessage" -f $token) `
    -Method Post `
    -ContentType "application/json;charset=utf-8" `
    -Body (ConvertTo-Json -Compress -InputObject $payload)