#! / bin / bash

if [-d "/System/Library/Extensions/LittleSnitch.kext"]; then
    sudo kextunload "/System/Library/Extensions/LittleSnitch.kext"
fi

if [-d "/Library/Extensions/LittleSnitch.kext"]; then
    sudo kextunload "/Library/Extensions/LittleSnitch.kext"
fi

sudo rm -rf "/System/Library/Extensions/LittleSnitch.kext"
sudo rm -rf "/Library/Extensions/LittleSnitch.kext"
sudo touch "/ System / Library / Extensions "
sudo touch" / Library / Extensions "

if [-f" /Library/LaunchAgents/at.obdev.LittleSnitchUIAgent.plist "]; then
    sudo launchctl unload -w "/Library/LaunchAgents/at.obdev.LittleSnitchUIAgent.plist"

if [-f "/Library/LaunchDaemons/at.obdev.littlesnitchd.plist"]; then
    sudo launchctl unload -w "/Library/LaunchDaemons/at.obdev.littlesnitchd.plist"
fi
if [-f "/Library/LaunchDaemons/com.lsreset.plist"]; then
    sudo launchctl unload -w "/Library/LaunchDaemons/com.lsreset.plist"
fi

sudo killall "Little Snitch Agent"
sudo killall "Little Snitch Configuration"
sudo killall "Little Snitch Little Snitch Network Monitor"

sudo rm -rf "/ Library / Little Snitch "
sudo rm-rf" / Applications / Little Snitch Configuration.app "
sudo rm-rf" / Library / Application Support / Objective Development "
sudo rm -f"
sudo rm -f "/Library/LaunchDaemons/at.obdev.littlesnitchd.plist"
sudo rm -f "/Library/LaunchDaemons/com.lsreset.plist"
sudo rm -f "/Library/Logs/LittleSnitchDaemon.log"

sudo rm -rf ~ / "Library / Application Support / Little Snitch"
sudo rm -f ~ / "Library / Preferences / at.obdev.LittleSnitchConfiguration.plist"
sudo rm -f ~ / "Library / Preferences / at.obdev.LittleSnitchSoftwareUpdate.plist "
sudo rm -f ~ /" Library / Preferences / at.obdev.LittleSnitchAgent.plist "
sudo rm -f ~ /" Library / Preferences / at.obdev.LittleSnitchNetworkMonitor.plist "
