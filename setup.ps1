# Setup dev folder

Set-Location C:\
Write-Output "Creating dev folder"
mkdir C:\dev
Write-Output "Creating personal folder"
mkdir C:\dev\personal
Write-Output "Creating work folder" 
mkdir C:\dev\work
Write-Output "Creating Libraries folder"
mkdir C:\dev\Libraries
Write-Output "Creating Tools folder"
mkdir C:\dev\Tools

Write-Output "Installing Chocolatey"
# Ensure Chocolatey is installed
Set-ExecutionPolicy Bypass -Scope Process -Force;
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Installing packages..."
# Install packages
choco install -y git
choco install -y vscode
choco install -y googlechrome
choco install -y firefox
choco install -y 7zip
choco install -y autohotkey
choco install -y nodejs.install
choco install -y androidstudio
choco install -y python3
choco install -y notepadplusplus.install
choco install -y winrar
choco install -y cmake
choco install -y slack
choco install -y spotify
choco install -y mingw
choco install -y microsoft-windows-terminal
choco install -y postman

Write-Output "Trying to install Visual Studio 2022"
# Install Visual Studio 2022 Community
try {
    Invoke-WebRequest -Uri "https://c2rsetup.officeapps.live.com/c2r/downloadVS.aspx?sku=community&channel=Release&version=VS2022&source=VSLandingPage&includeRecommended=true&cid=2030" -OutFile "C:\dev\vs_community.exe" -ErrorAction Stop
    Write-Output "Download of Visual Studio 2022 succeeded"
}
catch {
    Write-Error "Download of Visual Studio 2022 failed"
}

Write-Output "Installing VSCode extensions..."
# Install Visual Studio Code extensions
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension 1YiB.rust-bundle
code --install-extension 2ndshift.fresh-material
code --install-extension adrianwilczynski.csharp-to-typescript
code --install-extension alefragnani.Bookmarks
code --install-extension alexiv.vscode-angular2-files
code --install-extension Angular.ng-template
code --install-extension AntiAntiSepticeye.vscode-color-picker
code --install-extension burkeholland.simple-react-snippets
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension cschlosser.doxdocgen
code --install-extension cweijan.vscode-autohotkey-plus
code --install-extension cyrilletuzi.angular-schematics
code --install-extension Darkempire78.discord-tools
code --install-extension daylerees.rainglow
code --install-extension dbaeumer.vscode-eslint
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension dustypomerleau.rust-syntax
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension esafirm.kotlin-formatter
code --install-extension esbenp.prettier-vscode
code --install-extension firefox-devtools.vscode-firefox-debug
code --install-extension formulahendry.code-runner
code --install-extension franneck94.c-cpp-runner
code --install-extension fwcd.kotlin
code --install-extension GitHub.copilot
code --install-extension Gruntfuggly.todo-tree
code --install-extension hashicorp.terraform
code --install-extension Ionic.ionic
code --install-extension jasonnutter.search-node-modules
code --install-extension jasonnutter.vscode-codeowners
code --install-extension jawandarajbir.react-vscode-extension-pack
code --install-extension jeff-hykin.better-cpp-syntax
code --install-extension jinxdash.prettier-rust
code --install-extension johnpapa.angular-essentials
code --install-extension johnpapa.Angular2
code --install-extension johnpapa.vscode-peacock
code --install-extension johnpapa.winteriscoming
code --install-extension k--kato.docomment
code --install-extension KuanHulio.discord
code --install-extension lyngai.vscode-eslint-ts-fix
code --install-extension mark-wiemer.vscode-autohotkey-plus-plus
code --install-extension Mikael.Angular-BeastCode
code --install-extension mikestead.dotenv
code --install-extension mrmlnc.vscode-scss
code --install-extension ms-azuretools.vscode-azureappservice
code --install-extension ms-azuretools.vscode-azureresourcegroups
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csharp
code --install-extension ms-python.autopep8
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode.azure-account
code --install-extension ms-vscode.cmake-tools
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.hexeditor
code --install-extension ms-vscode.powershell
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension msjsdiag.vscode-react-native
code --install-extension PKief.material-icon-theme
code --install-extension pmneo.tsimporter
code --install-extension Postman.postman-for-vscode
code --install-extension redhat.java
code --install-extension redhat.vscode-xml
code --install-extension redhat.vscode-yaml
code --install-extension richardzampieriprog.csharp-snippet-productivity
code --install-extension ritwickdey.LiveServer
code --install-extension rust-lang.rust-analyzer
code --install-extension samplavigne.p5-vscode
code --install-extension serayuzgur.crates
code --install-extension sibiraj-s.vscode-scss-formatter
code --install-extension steoates.autoimport
code --install-extension twxs.cmake
code --install-extension vadimcn.vscode-lldb
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension xabikos.JavaScriptSnippets
code --install-extension xabikos.ReactSnippets
code --install-extension yoavbls.pretty-ts-errors
code --install-extension yzhang.markdown-all-in-one
code --install-extension zhuangtongfa.material-theme

# clone personal repos
Write-Output "Cloning personal repos..."
mkdir C:\dev\personal\scripts
Set-Location C:\dev\personal\scripts
git clone https://github.com/gagewaymsft/ahk.git

Write-Output "Copying autohotkey scripts to startup folder..."
# copy autohotkey scripts to startup folder

Copy-Item -Path C:\dev\personal\scripts\ahk\*.ahk -Destination $env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup

Write-Output "Setting up oh-my-posh..."
# install powershell tools
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
New-Item -Path $PROFILE -Type File -Force
Add-Content -Path $PROFILE -Value 'oh-my-posh init pwsh | Invoke-Expression'
. $PROFILE

Write-Output "Finished!"
