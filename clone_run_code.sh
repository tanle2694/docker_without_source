set -e
GIT_URL=$1
GIT_CHECKOUT=$2
COMMAND=$3

# Print args
echo "Args input:"
echo "   - Git url: $GIT_URL"
echo "   - Git checkout: $GIT_CHECKOUT"
echo "   - Command: $COMMAND"

# Clone git source
git clone $GIT_URL

# Extract name of the folder include source
BASENAME=$(basename $GIT_URL)
FOLDER=${BASENAME%.*}

cd $FOLDER
git checkout $GIT_CHECKOUT
sh -c "$COMMAND"
