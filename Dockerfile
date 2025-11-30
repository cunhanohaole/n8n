# Use the official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Optional: set default environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=buddy
ENV N8N_BASIC_AUTH_PASSWORD=YourSecurePass123
ENV N8N_ENCRYPTION_KEY=MyStrongEncryptionKey987
ENV WEBHOOK_URL=https://yourname.onrender.com
ENV GENERIC_TIMEZONE=Europe/Lisbon

# Expose n8n’s default port
EXPOSE 5678

# Command to start n8n
CMD ["n8n", "start"]
