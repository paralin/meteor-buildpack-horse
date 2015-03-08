#!/bin/sh
# Add an alias of MONGOLAB_URI to MONGO_URL.
echo "-----> Adding MONGODB_URL -> MONGO_URL env"
cat > "$APP_CHECKOUT_DIR"/.profile.d/mongodb.sh <<EOF
#!/bin/sh
# Set MONGO_URL to MONGODB_URL if it's not already set
if [ -z \$MONGO_URL ] ; then
  export MONGO_URL=\$MONGODB_URL
fi
EOF
