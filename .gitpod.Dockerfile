# gitpod.Dockerfile for Brainstormer project - updated
FROM ghcr.io/gitpod-io/workspace-full-vnc:latest

# Install Ollama
USER root
RUN curl -fsSL https://ollama.com/install.sh | sh
# Ollama installs to /usr/local/bin by default.
# It also attempts to start a systemd service, which might not be fully functional in Gitpod's init flow,
# but the binary will be there.

# Switch back to the default Gitpod user if necessary (optional, but good practice)
USER gitpod
