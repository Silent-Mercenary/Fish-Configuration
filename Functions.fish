#Functions.fish

# Function to pull S.M.A.R.T. Data from any drive which is detected by the system
function smartdata 
    # Prompt for the drive name
    echo "Enter the drive name (e.g., /dev/nvme0n1):"
    read drive_name
    
    # Check if the drive exists
    if test -e $drive_name
        echo "Running smartctl on $drive_name..."
        # Run smartctl and show the output
        sudo smartctl -a $drive_name
    else
        echo "Error: Drive $drive_name does not exist."
    end
end

#Function to pull repos from pacman.conf - not reliable

function repos
    grep -E "^\[.*\]" /etc/pacman.conf
end
