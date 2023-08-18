$floderFoto = "C:\Users\agyac\Desktop\Pictures"
New-Item -Path $floderFoto -ItemType Directory
Get-ChildItem "C:\" -Include *.png,*.jpeg,*.jpg -Recurse | Copy-Item -Destination $floderFoto
(Get-ChildItem $floderFoto ).Count | Out-File ".\Desktop\PicturesCount.txt"