hdiutil attach /Applications/Install\ macOS\ Mojave.app/Contents/SharedSupport/InstallESD.dmg -noverify -mountpoint /Volumes/Mojave
hdiutil create -o /tmp/MojaveBase.cdr -size 7316m -layout SPUD -fs HFS+J
hdiutil attach /tmp/MojaveBase.cdr.dmg -noverify -mountpoint /Volumes/install_build
asr restore -source /Applications/Install\ macOS\ Mojave.app/Contents/SharedSupport/BaseSystem.dmg -target /Volumes/install_build -noprompt -noverify -erase

cp -R /Volumes/Mojave/Packages /Volumes/macOS\ Base\ System/System/Installation


hdiutil detach /Volumes/macOS\ Base\ System/
hdiutil detach /Volumes/Mojave/
mv /tmp/MojaveBase.cdr.dmg /tmp/BaseSystem.dmg

# Restore the 10.14 Installer's BaseSystem.dmg into file system and place custom BaseSystem.dmg into the root
hdiutil create -o /tmp/Mojave.cdr -size 8965m -layout SPUD -fs HFS+J
hdiutil attach /tmp/Mojave.cdr.dmg -noverify -mountpoint /Volumes/install_build
asr restore -source /Applications/Install\ macOS\ Mojave.app/Contents/SharedSupport/BaseSystem.dmg -target /Volumes/install_build -noprompt -noverify -erase
cp /tmp/BaseSystem.dmg /Volumes/macOS\ Base\ System

hdiutil detach /Volumes/macOS\ Base\ System/
hdiutil convert /tmp/Mojave.cdr.dmg -format UDTO -o /tmp/Mojave.iso
mv /tmp/Mojave.iso.cdr ~/Desktop/Mojave.iso
rm /tmp/Mojave.cdr.dmg
