# PowerShell Script

Script to automate site opening just by a command in PowerShell.
<br>
The command below runs the script after executing `morning` command in powershell. Replace the path in the below command.
```
Set-Alias morning "C:\Users\conta\morning.ps1"
```
For bash, can refer this blog
[here](https://h.daily-dev-tips.com/ive-automated-my-morning-routine#ckeia22790019jcs1g5o4h9yw)

The ```Set-Alias ``` command may not be recognised by the powershell after the current session and the user may get error that the command is not recognised when he executes ```morning``` in powershell.

- Open the Microsoft.PowerShell_profile.ps1 file in a text editor (like Notepad) for editing. You can use the notepad command in PowerShell to open the file:
  ```
  notepad $PROFILE
  ```
  If you see an error saying "The system cannot find the path specified," it means that your PowerShell profile doesn't exist yet, and you can create it by running:
  ```
  New-Item -Path $PROFILE -ItemType File notepad $PROFILE
  ```
- In the Notepad window that opens, add the Set-Alias command to define your alias. For example:
  ```
  Set-Alias morning "C:\Path\To\morning.ps1"
   ```
- Save the file and close
- restart powershell
