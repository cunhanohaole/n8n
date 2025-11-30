# Use official n8n image
FROM n8nio/n8n:latest

# Set recommended environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=buddy
ENV N8N_BASIC_AUTH_PASSWORD=YourSecurePass123
ENV N8N_ENCRYPTION_KEY=MyStrongEncryptionKey987
ENV WEBHOOK_URL=https://buddy-n8n.onrender.com
ENV GENERIC_TIMEZONE=Europe/Lisbon
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Set working directory explicitly
WORKDIR /home/node

# Make sure the n8n binary is on the PATH
ENV PATH="/usr/local/bin:${PATH}"

# Expose n8n’s default port
EXPOSE 5678

# Start n8n using the full path to the binary
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
