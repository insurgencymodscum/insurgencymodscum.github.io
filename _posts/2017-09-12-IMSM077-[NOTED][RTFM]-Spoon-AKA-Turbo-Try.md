---
layout: post
title: '[NOTED][RTFM] Spoon AKA Turbo (Virtualization) Notes'
date: 2017-09-12
author: InsModScum
tags:
- IMS
- 2017
- Noted
- RTFM
- Spoon
- Turbo
---

# NOTE #

```
rem DO NOT USE "-d / --detach" to avoid creating console window. THIS WILL LEAVE THE "CONTAINER" AFTER EXITING THE PROGRAM.

```

# RTFM: TLDR #

```
rem -d, --detach                     Run the container in the background
rem     run           Create a new container from an image or start the most recently used container with the same parameters
rem     start         Restart a stopped container or start an application inside an already running container
rem     try           Execute an image in a temporary container
```

<!-- more -->

# spoon help #

```
Available commands are:

    build         Build an image from a build script or xappl configuration file
    commit        Create a new image from the container
    config        View and modify Turbo client settings
    containers    List all containers on the local machine
    continue      Continue or fork execution of a container from a previous state
    copy          Copy files from a container to another container or the local filesystem
    copyi         Copy an image to a new repository
    diff          Inspect changes to the container state
    export        Export an image from the local repository to the specified path
    fork          Fork existing container
    gc            Garbage collects unused forked containers
    gci           Garbage collects unreferenced images
    history       List all images used in the past
    images        List all images in the local repository
    import        Build an image from the specified file and add it to the local repository
    inspect       Displays the contents of an image
    install       Register the specified container to the desktop
    installi      Register the specified image set to the desktop
    login         Login to the remote hub
    logout        Logout of the remote hub
    logs          Display output and error logs for a container
    netstat       Display network information about a running container
    new           Creates new container from an image
    ps            Display running containers and processes
    pull          Download an image from the remote hub
    push          Upload an image to the remote hub
    release       Create release for an image
    releases      List releases for an image
    resume        Resume execution of a paused container
    revert        Revert changes to a container
    rm            Remove a container from the local repository
    rmi           Remove an image from the local repository
    run           Create a new container from an image or start the most recently used container with the same parameters
    save          Saves the specified container to the hub
    search        Search remote hub for images
    start         Restart a stopped container or start an application inside an already running container
    stop          Stop a running container
    subscribe     Creates subscription to the specified org or user account
    subscription  Displays information on the specified subscription
    subscriptions Displays a list of all subscriptions
    suspend       Suspend a running container
    try           Execute an image in a temporary container
    uninstall     Uninstall specified container
    uninstalli    Uninstall specified image
    unsubscribe   Removes the subscription to the specified user or org account
    version       Show the version of the Turbo client
    vm            Show the current Turbo VM version
    vms           Lists available Turbo VM versions

help <name>       For help with one of the above commands
```
# spoon try #

```
try - Execute an image in a temporary container

Example: turbo try nodejs/nodejs+skin(red) cmd

Usage: turbo.exe try <options> <image>[+skin(color)] [<parameters>...]

<options> available:
      --                       Parameters after -- are passed directly to the container process
  -a, --attach                 Attach to stdin, stdout, and stderr of the container
      --ad-domain-allow=VALUE  Allow execution from the Active Directory domain
      --ad-domain-deny=VALUE   Disallow execution from the Active Directory domain
      --ad-group-allow=VALUE   Allow execution for members of the Active Directory group
      --ad-group-deny=VALUE    Disallow execution for members of the Active Directory group
      --admin                  Run the container with administrative permissions
  -d, --detach                 Run the container in the background
      --diagnostic             Enable diagnostic logging
      --disable=VALUE          Disable the specified Turbo VM setting
  -e, --env=VALUE              Set environment variables inside the container
      --enable=VALUE           Enable the specified Turbo VM setting
      --enable-sync            Enable container synchronization
      --env-file=VALUE         Read in a line delimited file of ENV variables
      --format=VALUE           Use the specified format for output. Supported values: json
      --hosts=VALUE            Add an entry to the virtual /etc/hosts file (<redirect>:<name>)
  -i, --isolate=VALUE          Set isolation level: full, write-copy, merge or merge-user.
      --link=VALUE             Add link to another container (<container>:<alias>)
      --mount=VALUE            Mount a host folder into the container. Format: [other-container:]SourceFolder[=TargetFolder]
  -n, --name=VALUE             Name of created container
      --network=VALUE          Run container in specified named network
      --no-pull                Uses local images if to run the container if possible.  If not present, will pull from the hub.
      --proxy-password=VALUE   Proxy password
      --proxy-server=VALUE     Proxy server. Format: [socks5|http|https]://yourproxy:port
      --proxy-username=VALUE   Proxy username
      --pull                   Pulls base images from hub before running, if they exist
      --route-add=VALUE        Add route mapping. Supported protocols: ip, pipe, tcp, udp
      --route-block=VALUE      Block specified route or protocol. Supported protocols: ip, tcp, udp
      --route-file=VALUE       Read in a INI file of routing configuration
      --set-startup-file=VALUE Override the default startup file permanantly
      --set-startup-verb=VALUE Override the default startup verb permanantly
      --show-window=VALUE      Controls how window is shown. Supported values: max, default
      --startup-file=VALUE     Override the default startup file once
      --startup-verb=VALUE     Override the default startup verb once
      --stream                 Enable streaming of the image if available
      --temp                   Remove container when it exits
      --trigger=VALUE          Execute named group of startup files
      --using=VALUE            Use specified images as a temporary dependency
      --vm=VALUE               Use the specified Turbo VM version for execution
  -w, --working-dir=VALUE      Set the initial working directory inside the container
      --wait-after-error       Leave process open after error
      --wait-after-exit        Leave process open after it exits
```
---

IMSID_D917F87525014B04999E1AD80966446C3A983A80