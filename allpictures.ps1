$floderFoto = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "Pictures")
New-Item -Path $floderFoto -ItemType Directory
Get-ChildItem "C:\" -Include *.png,*.jpeg,*.jpg -Recurse | Copy-Item -Destination $floderFoto
(Get-ChildItem $floderFoto).Count | Out-File "$floderFoto\PicturesCount.txt"