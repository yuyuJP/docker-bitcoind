build:
	docker build -t bitcoind .

run:
	docker run -v $HOME/bitcoin-data:/bitcoin --name=bitcoind-node -d \
     -p 18444:18444 \
     -p 18332:18332 \
	 -p 3000:3000 \
     bitcoind