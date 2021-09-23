hdiutil create -o /tmp/BigSur -size 16384m -volname BigSur -layout SPUD -fs HFS+J
sudo hdiutil attach /tmp/BigSur.dmg -noverify -mountpoint /Volumes/BigSur
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --volume /Volumes/BigSur --nointeraction
hdiutil eject -force /Volumes/Install\ macOS\ Big\ Sur
hdiutil convert /tmp/BigSur.dmg -format UDTO -o ./BigSur
mv -v ./BigSur.cdr ./BigSur.iso
rm -fv /tmp/BigSur.dmg