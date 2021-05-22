# PowerShell

### Opprette mappe

```PowerShell
New-Item -Path 'D:\temp\Test Folder' -ItemType Directory
```

### Lage filer

```PowerShell
New-Item -Path 'D:\temp\Test Folder\Test File.txt' -ItemType File
```

### Kopiere mappe med innhold

```PowerShell
Copy-Item 'D:\temp\Test Folder' -Destination 'D:\temp\Test Folder1'
```

### Kopiere filer

```PowerShell
Copy-Item 'D:\temp\Test Folder\Test File.txt' 'D:\temp\Test Folder1\Test File1.txt'
```

### Slette mappe

```PowerShell
Remove-Item 'D:\temp\Test Folder' -Recurse
```

### Slette fil

```PowerShell
Remove-Item 'D:\temp\Test Folder\test.txt'
```

### Slette filer

```PowerShell
Remove-Item 'D:\temp\Test Folder' -Recurse
```

### Flytte mappe

```PowerShell
Move-Item D:\temp\Test D:\temp\Test1
```

### Flytte fil

```PowerShell
Move-Item D:\temp\Test\Test.txt D:\temp\Test1
```

### Endre mappenavn

```PowerShell
Rename-Item D:\temp\Test D:\temp\Test1
```

### Endre filnavn

```PowerShell
Rename-Item D:\temp\Test\test.txt test1.txt
```

### Motta informasjon om fil

```PowerShell
Get-Content D:\temp\Test\test.txt
(Get-Content D:\temp\test\test.txt).length
```

### Teste om mappe eksisterer

```PowerShell
Test-Path D:\temp\test
```

### Teste om fil eksisterer

```PowerShell
Test-Path D:\temp\test\test.txt
```
