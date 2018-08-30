FROM debian:sid

RUN echo 'APT::Get::Show-Versions "1";' > /etc/apt/apt.conf.d/verbose

RUN apt-get update && apt-get install -y \
		autopkgtest qemu \
		bash-completion curl less rsync vim wget \
		build-essential \
		debian-keyring \
		devscripts \
		dh-make \
		dput-ng \
		equivs \
		git \
		git-buildpackage git-dpm \
		golang-go \
		libcrypt-ssleay-perl \
		libdistro-info-perl \
		libfile-fcntllock-perl \
		libwww-perl \
		lintian \
		openssh-client \
		pristine-tar \
		python-distro-info \
		python3-debian \
		quilt \
		reprepro \
		sudo \
		--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN find /etc/apt/sources.list* -type f -exec sed -i 'p; s/^deb /deb-src /' '{}' +
RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/allusers-nopass

ENV LANG C.UTF-8 
ENV TERM xterm-256color
ENV QUILT_PATCHES debian/patches

CMD /bin/bash