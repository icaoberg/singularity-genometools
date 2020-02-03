Bootstrap: docker
From: debian:latest

IncludeCmd: yes

%labels
    AUTHOR icaoberg
    EMAIL icaoberg@andrew.cmu.edu
    WEBSITE http://www.andrew.cmu.edu/~icaoberg
    VERSION 1.6.0

%environment
    export GT_MEM_BOOKKEEPING=on gt
    export GT_ENV_OPTIONS=-spacepeak
    export GT_ENV_OPTIONS=-showtime

%post
    /usr/bin/apt-get update && apt-get install -y --no-install-recommends apt-utils
    /usr/bin/apt-get update --fix-missing
    /usr/bin/apt-get install -y wget

####################################################################################
%appinstall gt
    wget -nc http://genometools.org/pub/binary_distributions/gt-1.6.0-Linux_x86_64_x86_64-64bit.tar.gz
    tar -xvf gt-1.6.0-Linux_x86_64_x86_64-64bit.tar.gz
    rm -f gt-1.6.0-Linux_x86_64_x86_64-64bit.tar.gz
    mv -v gt-1.6.0-Linux_x86_64_x86_64-64bit /opt/
    ln -s /opt/gt-1.6.0-Linux_x86_64_x86_64-64bit/bin/gt /bin/gt
    chmod +x /bin/gt

%apphelp gt
    gt --help    

%apprun gt
    gt "$@"
