# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export HOMEBREW_GITHUB_API_TOKEN=3b96ec8de5f1e94b9d7221950bdc68196ac22620
