# .gitpod.Dockerfile for Brainstormer project - Updated
# .gitpod.Dockerfile for Brainstormer project - Updated
FROM ghcr.io/gitpod-io/workspace-full-vnc:latest # Example base image - yours might be different

# ... (any other existing lines in your Dockerfile, e.g., for system packages) ...

# Install Ollama
USER root
RUN curl -fsSL https://ollama.com/install.sh | sh
# Ollama installs to /usr/local/bin by default.
# It also attempts to start a systemd service, which might not be fully functional in Gitpod's init flow,
# but the binary will be there.

# Switch back to the default Gitpod user if necessary (optional, but good practice)
USER gitpod
