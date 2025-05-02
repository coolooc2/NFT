#!/bin/bash

# Create a temporary directory for packaging
echo "Creating temporary directory..."
TEMP_DIR="pixelnft-temp"
mkdir -p $TEMP_DIR

# Copy frontend files
echo "Copying frontend files..."
mkdir -p $TEMP_DIR/frontend
cp -r frontend/src $TEMP_DIR/frontend/
cp frontend/package.json $TEMP_DIR/frontend/
cp frontend/tsconfig.json $TEMP_DIR/frontend/
cp frontend/tsconfig.node.json $TEMP_DIR/frontend/
cp frontend/vite.config.ts $TEMP_DIR/frontend/
cp frontend/.env.example $TEMP_DIR/frontend/

# Copy backend files
echo "Copying backend files..."
mkdir -p $TEMP_DIR/backend
cp -r backend/src $TEMP_DIR/backend/
cp backend/package.json $TEMP_DIR/backend/
cp backend/tsconfig.json $TEMP_DIR/backend/
cp backend/.env.example $TEMP_DIR/backend/

# Copy contract files
echo "Copying contract files..."
mkdir -p $TEMP_DIR/contracts
cp -r contracts/* $TEMP_DIR/contracts/

# Copy documentation and scripts
echo "Copying documentation and scripts..."
cp README.md $TEMP_DIR/
cp deploy.sh $TEMP_DIR/
cp package.sh $TEMP_DIR/

# Create zip file
echo "Creating zip file..."
zip -r pixelnft.zip $TEMP_DIR

# Clean up
echo "Cleaning up..."
rm -rf $TEMP_DIR

echo "Package created: pixelnft.zip"
echo "Contents:"
echo "- Frontend source code"
echo "- Backend source code"
echo "- Smart contracts"
echo "- Documentation"
echo "- Deployment scripts" 