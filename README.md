# PixelNFT Marketplace

A decentralized NFT marketplace built with React, TypeScript, and Solidity.

## Features

- Create and manage NFT collections
- Mint and trade NFTs
- User authentication and authorization
- Responsive design
- Web3 integration with MetaMask

## Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- MetaMask wallet
- Infura API key
- MongoDB database

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/pixelnft.git
cd pixelnft
```

2. Install dependencies:
```bash
# Install frontend dependencies
cd frontend
npm install

# Install backend dependencies
cd ../backend
npm install
```

3. Configure environment variables:
- Copy `.env.example` to `.env` in both frontend and backend directories
- Update the variables with your configuration

4. Start the development servers:
```bash
# Start backend server
cd backend
npm run dev

# Start frontend server
cd frontend
npm run dev
```

## Deployment

1. Build the project:
```bash
./deploy.sh
```

2. Upload the generated `pixelnft-deployment.tar.gz` to your server

3. Extract and deploy:
```bash
tar -xzf pixelnft-deployment.tar.gz
cd deployment/backend
npm install
npm start
```

4. Configure your web server (nginx/apache) to serve the frontend files from `deployment/frontend`

## Environment Variables

### Frontend (.env)
```
VITE_API_URL=http://localhost:3001
VITE_CONTRACT_ADDRESS=your_contract_address
VITE_NETWORK=mainnet
VITE_INFURA_KEY=your_infura_key
```

### Backend (.env)
```
PORT=3001
MONGODB_URI=your_mongodb_uri
JWT_SECRET=your_jwt_secret
```

## License

MIT

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request 