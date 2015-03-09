#!/bin/sh
echo "-----> Adding MONGODB_OPLOG_URL -> MONGO_OPLOG_URL env"
cat > "$APP_CHECKOUT_DIR"/.profile.d/mongodb.sh <<EOF
#!/bin/sh
# Set MONGO_OPLOG_URL to MONGODB_OPLOG_URL if it's not already set
if [ -z \$MONGO_URL ] ; then
  export MONGO_OPLOG_URL=\$MONGODB_OPLOG_URL
fi
EOF
