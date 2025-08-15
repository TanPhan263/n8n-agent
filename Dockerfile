FROM n8nio/n8n

ENV NODE_TLS_REJECT_UNAUTHORIZED=0 \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=supersecret \
    TZ=Asia/Ho_Chi_Minh

# Port Render sẽ dùng
EXPOSE 5678

# Volume chỉ để tham khảo (Render dùng Persistent Disk)
VOLUME ["/home/node/.n8n"]

CMD ["n8n", "start"]
