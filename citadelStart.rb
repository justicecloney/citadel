################################################################################
# Citadel start file
################################################################################
# Prerequisites: Perl, Linux, dialog

# TODO 
## openvpn install/setup/control
settings = Hash.new(0)

def parseSetting (line)
    arr = line.split('=')
    settings[arr[0]] = arr[1]
end

def citadelInitialize (nondefaultConfig)
    settingsLocation = "citadel.settings"
    if nondefaultConfig
        settingsLocation = nondefaultConfig
    end

    if File::exists?( settingsLocation )
        settingsFile = File.open(settingsLocation, "r+")
        #settingsFile.foreach()
        IO.foreach(settingsFile){|line|parseSetting(line)}
        puts "settings loaded"
    else
        file = File.new("citadel.settings","w+")
        puts "New file generated"
    end
   
end

def installMenu ()
    # todo:
    # openvpn
    # cloud9ide
    # nextcloud
    # bitwarden
    # SteamCMD and games
    # minecraft server, maybe amp?
    # 
end
def manageMenu ()
    # run openvpn script to deauth/make new keys
    # change common cloud9 settings easily, port, working directory
    # nextcloud ???
    # bitwarden update, maybe? might need admin web login.
    # update steamcmd, change directories
    # manage minecraft servers to a light extent. Refer people to AMP for a better solution. option to install?
    # view and change backup settings
    # apt update && upgrade
    # pi menu
end
def monitorMenu ()
    # htop
    # tempurature
    # drive statuses
    # network statuses
    # ping tools
end
def citadelMenu ()
    system "clear" || system "cls" #clear screen for menu
    puts "Citadel Menu:"
    puts "1:install"
    puts "2:manage"
    puts "3:monitor"
end
citadelInitialize('')

#IO.foreach("input.txt"){|block| puts block}