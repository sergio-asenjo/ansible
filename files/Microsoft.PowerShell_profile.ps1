oh-my-posh init pwsh --config "$HOME\.omp\tonybaloney.omp.json" | Invoke-Expression

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Import-Module -Name Terminal-Icons

clear
