# confluence-asciidoctor
Write text in "asciidoctor" format and publish it in confluence.
asciidoctor can be found here: http://asciidoctor.org/

# Install

# python2
sudo dnf install -y python-lxml 
sudo gem install asciidoctor
pip install poster

# python3
sudo dnf install -y gem python-lxml
sudo gem install asciidoctor

# Setup your .netrc with your credentials in $HOME
vim ~/.netrc

# Init repo (you find this then in .confluence-asciidoctor/config)
confluence-asciidoctor init --url https://your.confluence.server.com/display/NAME

# Example publish
confluence-asciidoctor publish example.txt

confluence-asciidoctor --code-theme RDark publish example.txt

# Example download
confluence-asciidoctor download "Minutes"
