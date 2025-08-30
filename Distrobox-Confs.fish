#This config store all the aliases and Function(s) to make distrobox a bit nicer to deal with

#DistroBox
  #DistroBox Distros
    alias alpine 'echo Alpine | figlet -f slant && distrobox enter alpine' # opens up alpine
    alias arch 'echo Arch | figlet -f slant && distrobox enter arch' # start arch docker container
    alias almalinux 'echo AlmaLinux | figlet -f slant && distrobox enter almalinux' # start almalinux docker container
    alias blackarch 'echo BlackArch | figlet -f slant && distrobox enter blackarch' # start blackarch docker container
    alias debian-unstable 'echo Debian-unstable | figlet -f slant && distrobox enter debian-unstable' # start debian-unstable docker container
    alias fedora-rawhide 'echo Fedora-Rawhide | figlet -f slant && distrobox enter fedora-rawhide' # starts up fedora rawhide
    alias kali-rolling 'echo Kali-rolling | figlet -f slant && distrobox enter kali-rolling' # starts up kali container
    alias rocky 'echo Rocky | figlet -f slant && distrobox enter rocky' #opens up Rocky (until it looks for fish and then fucks off)
    alias ubuntu 'echo Ubuntu Dev | figlet -f slant && distrobox enter ubuntu' # starts ubuntu docker container
    alias voidlinux 'echo VoidLinux | figlet -f slant && distrobox enter voidlinux' # starts voidlinux docker container

  #Distrobox Utilities
    alias stop 'distrobox-stop -a' #kills all containers images,
    alias dist-list 'distrobox list' # shows all distro containers
    alias dist-rm 'distrobox-rm' # removes the container specified
    alias dist-upgrade 'echo beginning upgrades to all containers; distrobox-upgrade -a' #updates and upgrades all containers

# A bit of fuckery to make to simplify creating and pulling distroboxes
    function create_distrobox
    # Prompt for the image name
    echo "Enter the image name (e.g., ubuntu:latest):"
    read image_name

    # Prompt for the container name
    echo "Enter the name for the distrobox:"
    read container_name

    # Run the distrobox command to create the container
    echo "Creating Distrobox with image '$image_name' and name '$container_name'..."
    distrobox create -i $image_name -n $container_name

    # Check if the command was successful
    if test $status -eq 0
        echo "Distrobox '$container_name' created successfully."
    else
        echo "Error: Failed to create Distrobox '$container_name'."
    end
end
