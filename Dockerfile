# Dockerfile updates

# ... existing Dockerfile content ...

# Installing FileBrowser
RUN apt-get update && \
    apt-get install -y filebrowser

# Installing Tailscale
RUN curl -fsSL https://tailscale.com/stable/ubuntu/$(lsb_release -cs)/tailscale_1.26.1_amd64.deb -o tailscale.deb && \
    dpkg -i tailscale.deb && \
    apt-get install -y -f && \
    rm tailscale.deb

# ... remaining Dockerfile content ...