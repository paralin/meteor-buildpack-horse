#!/bin/sh
echo "-----> Adding MONGODB_URL -> MONGO_URL env"
cat > "$APP_CHECKOUT_DIR"/.profile.d/mongodb.sh <<EOF
#!/bin/sh
# Set MONGO_URL to MONGODB_URL if it's not already set
if [ -z \$MONGO_URL ] ; then
  export MONGO_URL=\$MONGODB_URL
fi
EOF
