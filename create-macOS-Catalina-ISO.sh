hdiutil attach /Applications/Install\ macOS\ Catalina.app/Contents/SharedSupport/InstallESD.dmg -noverify -mountpoint /Volumes/Catalina
hdiutil create -o /tmp/CatalinaBase.cdr -size 9216m -layout SPUD -fs HFS+J
hdiutil attach /tmp/CatalinaBase.cdr.dmg -noverify -mountpoint /Volumes/install_build
asr restore -source /Applications/Install\ macOS\ Catalina.app/Contents/SharedSupport/BaseSystem.dmg -target /Volumes/install_build -noprompt -noverify -erase

cp -R /Volumes/Catalina/Packages/* /Volumes/macOS\ Base\ System/System/Installation


hdiutil detach /Volumes/macOS\ Base\ System/
hdiutil detach /Volumes/Catalina/
mv /tmp/CatalinaBase.cdr.dmg /tmp/BaseSystem.dmg

# Restore the 10.14 Installer's BaseSystem.dmg into file system and place custom BaseSystem.dmg into the root
hdiutil create -o /tmp/Catalina.cdr -size 10562m -layout SPUD -fs HFS+J
hdiutil attach /tmp/Catalina.cdr.dmg -noverify -mountpoint /Volumes/install_build
asr restore -source /Applications/Install\ macOS\ Catalina.app/Contents/SharedSupport/BaseSystem.dmg -target /Volumes/install_build -noprompt -noverify -erase
cp /tmp/BaseSystem.dmg /Volumes/macOS\ Base\ System

hdiutil detach /Volumes/macOS\ Base\ System/
hdiutil convert /tmp/Catalina.cdr.dmg -format UDTO -o /tmp/Catalina.iso
mv /tmp/Catalina.iso.cdr ~/Desktop/Catalina.iso
rm /tmp/Catalina.cdr.dmg
