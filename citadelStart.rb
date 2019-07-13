################################################################################
# Citadel start file
################################################################################
# Prerequisites: Perl, Linux, dialog

# TODO 
# check/initialize for config directory
# dummy import settings function
# Show menu
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
citadelInitialize('')

#IO.foreach("input.txt"){|block| puts block}