# Copy images to category folders
$base = "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\products"
$images = @(Get-ChildItem "$base" *.png | Sort-Object Name)

$mapping = @{
    'keychains' = @(0,1,2,3)
    'wearables' = @(4,5,6,7)
    'bags' = @(8,9,10,11)
    'home-decor' = @(12,13,14,15,16,17)
    'custom-designs' = @(18,19,20,21)
    'seasonal' = @(22,23,24,25)
}

# Copy Keychains
for ($i = 0; $i -lt 4; $i++) {
    Copy-Item "$base\$($images[$i].Name)" "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\keychains\keychain-$($i+1).png" -Force
}

# Copy Wearables
for ($i = 0; $i -lt 4; $i++) {
    Copy-Item "$base\$($images[$i+4].Name)" "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\wearables\gloves-$($i+1).png" -Force
}

# Copy Bags
for ($i = 0; $i -lt 4; $i++) {
    Copy-Item "$base\$($images[$i+8].Name)" "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\bags\bag-$($i+1).png" -Force
}

# Copy Home Decor (6)
for ($i = 0; $i -lt 6; $i++) {
    Copy-Item "$base\$($images[$i+12].Name)" "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\home-decor\decor-$($i+1).png" -Force
}

# Copy Custom Designs
for ($i = 0; $i -lt 4; $i++) {
    Copy-Item "$base\$($images[$i+18].Name)" "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\custom-designs\custom-$($i+1).png" -Force
}

# Copy Seasonal
for ($i = 0; $i -lt 4; $i++) {
    Copy-Item "$base\$($images[$i+22].Name)" "c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\seasonal\seasonal-$($i+1).png" -Force
}

Write-Host "✅ IMAGES COPIED TO CATEGORY FOLDERS!"
Write-Host ""
Write-Host "Keychains: $(Get-ChildItem 'c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\keychains\' *.png | Measure-Object | Select-Object -ExpandProperty Count) files"
Write-Host "Wearables: $(Get-ChildItem 'c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\wearables\' *.png | Measure-Object | Select-Object -ExpandProperty Count) files"
Write-Host "Bags: $(Get-ChildItem 'c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\bags\' *.png | Measure-Object | Select-Object -ExpandProperty Count) files"
Write-Host "Home-Decor: $(Get-ChildItem 'c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\home-decor\' *.png | Measure-Object | Select-Object -ExpandProperty Count) files"
Write-Host "Custom-Designs: $(Get-ChildItem 'c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\custom-designs\' *.png | Measure-Object | Select-Object -ExpandProperty Count) files"
Write-Host "Seasonal: $(Get-ChildItem 'c:\Users\Imram\Desktop\GWM 2021\Asho web project\Asho Website\images\seasonal\' *.png | Measure-Object | Select-Object -ExpandProperty Count) files"
