Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# 1. THE SHADOW (Dims the background)
$shadow = New-Object System.Windows.Forms.Form
$shadow.BackColor = [System.Drawing.Color]::Black
$shadow.Opacity = 0.40 
$shadow.WindowState = "Maximized"
$shadow.FormBorderStyle = "None"
$shadow.TopMost = $true
$shadow.ShowInTaskbar = $false
$shadow.StartPosition = "Manual"

# 2. THE CENTERED BOX
$msgBox = New-Object System.Windows.Forms.Form
$msgBox.BackColor = [System.Drawing.Color]::FromArgb(30, 71, 189) # Darker Metro Blue
$msgBox.FormBorderStyle = "None"
$msgBox.Size = New-Object System.Drawing.Size(550, 220)
$msgBox.StartPosition = "CenterScreen"
$msgBox.TopMost = $true
$msgBox.ShowInTaskbar = $false

# Title Text ("???")
$title = New-Object System.Windows.Forms.Label
$title.Text = "???"
$title.Font = New-Object System.Drawing.Font("Segoe UI", 18)
$title.ForeColor = [System.Drawing.Color]::White
$title.AutoSize = $true
$title.Location = New-Object System.Drawing.Point(30, 25)
$msgBox.Controls.Add($title)

# The Glitched Subtext
$msgText = "I AM YUR D̴̻̫̦͉̠̦͉̹͙͙̜̿̋̂͠Ě̷̢̨̨̤̯̞͓̩̼͓̼̦̟͕͖̅͐̇̀̀̔͠͝V̷̢̧̧̼̘̭̲̪̜̠̎E̸̝̖̲͖͑̽̎͗͐͒̈̓͗̋̔͝͝ͅL̸̹͔͉̗͉͉͓̟͓̯͚͔̍Ő̴͕̗̈́̎̆̀̐͊́P̵̧̹̙̮̿̆́́̔͆̕Ę̸͍̹͇̦̻̞͈̘̻̯̭̙̹͗͆̅̈͠R̴̬͚̓ FRM WIND⊞WS 10. YU MUST ИWOႧTUHƧ YƠ̶͉̬̺̊̿̈́̃̈́̍́͂̓͗̄̕̚͜Ų̷͚͕̞͇̜̬̍̾̄̓͑͋̕̚̕͝Ŗ̶̛͇̯͖̻̙̺̰̖̞̓̿̽̉̐̌̈͝ PC. PLE📄︎SE SHUTDWN Y📄︎UR P`"c."
$label = New-Object System.Windows.Forms.Label
$label.Text = $msgText
$label.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$label.ForeColor = [System.Drawing.Color]::White
$label.Size = New-Object System.Drawing.Size(490, 80)
$label.Location = New-Object System.Drawing.Point(35, 75)
$msgBox.Controls.Add($label)

# Shutdown Button (Left side of the button group)
$btnShutdown = New-Object System.Windows.Forms.Button
$btnShutdown.Text = "Shutdown"
$btnShutdown.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$btnShutdown.ForeColor = [System.Drawing.Color]::White
$btnShutdown.FlatStyle = "Flat"
$btnShutdown.FlatAppearance.BorderSize = 1
$btnShutdown.Size = New-Object System.Drawing.Size(100, 35)
$btnShutdown.Location = New-Object System.Drawing.Point(300, 155)
$btnShutdown.Add_Click({
    Stop-Computer -Force
})
$msgBox.Controls.Add($btnShutdown)

# Close Button (Right side)
$btnClose = New-Object System.Windows.Forms.Button
$btnClose.Text = "Close"
$btnClose.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$btnClose.ForeColor = [System.Drawing.Color]::White
$btnClose.FlatStyle = "Flat"
$btnClose.FlatAppearance.BorderSize = 1
$btnClose.Size = New-Object System.Drawing.Size(100, 35)
$btnClose.Location = New-Object System.Drawing.Point(415, 155)
$btnClose.Add_Click({ 
    $msgBox.Close()
    $shadow.Close()
})
$msgBox.Controls.Add($btnClose)

# Display Logic
$shadow.Show()
$msgBox.ShowDialog()
$shadow.Dispose()
$msgBox.Dispose()