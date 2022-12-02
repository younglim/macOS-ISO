hdiutil create -o /tmp/Monterey -size 16384m -volname Monterey -layout SPUD -fs HFS+J
sudo hdiutil attach /tmp/Monterey.dmg -noverify -mountpoint /Volumes/Monterey
sudo /Applications/Install\ macOS\ Monterey.app/Contents/Resources/createinstallmedia --volume /Volumes/Monterey --nointeraction
hdiutil eject -force /Volumes/Install\ macOS\ Monterey
hdiutil convert /tmp/Monterey.dmg -format UDTO -o ./Monterey.cdr
mv -v ./Monterey.cdr ./Monterey.iso
rm -fv /tmp/Monterey.dmg
