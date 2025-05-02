#!/bin/bash

# Build frontend
echo "Building frontend..."
cd frontend
npm install
npm run build

# Build backend
echo "Building backend..."
cd ../backend
npm install
npm run build

# Create deployment directory
echo "Creating deployment directory..."
cd ..
mkdir -p deployment
cp -r frontend/dist deployment/frontend
cp -r backend/dist deployment/backend
cp backend/package.json deployment/backend/
cp backend/.env deployment/backend/

# Create deployment package
echo "Creating deployment package..."
tar -czf pixelnft-deployment.tar.gz deployment/

echo "Deployment package created: pixelnft-deployment.tar.gz"
echo "To deploy:"
echo "1. Upload pixelnft-deployment.tar.gz to your server"
echo "2. Extract the package"
echo "3. Run 'npm install' in the backend directory"
echo "4. Start the backend server with 'npm start'"
echo "5. Configure your web server (nginx/apache) to serve the frontend files" 