# Clean the repo
clean:; forge clean

# Install the Modules
install:; forge install

# Update Dependencies
update:; forge update

# Builds
build:; forge clean && forge build --optimize --optimize-runs 1000000

# Tests
test :; forge clean && forge test --optimize --optimize-runs 1000000 -v

# Lints
lint:; npm run lint 

# Generate Gas Snapshots
snap:; forge clean && forge snapshot --optimize --optimize-runs 1000000
