# Path to the text file containing URLs (replace with your actual file path)
$urlFilePath = "C:\Users\conta\Downloads\list.txt"

# Get the path to the Google Chrome executable
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"  # Update this path if needed

# Read URLs from the file and open them in new tabs in Google Chrome
Get-Content $urlFilePath | ForEach-Object {
    Start-Process $chromePath -ArgumentList "--new-tab", $_
}
