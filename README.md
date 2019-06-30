# confluence-asciidoctor
Write text in "asciidoctor" format and publish it in confluence.
asciidoctor can be found here: http://asciidoctor.org/

# Install
sudo gem install asciidoctor

# python2
sudo dnf install python-lxml 
pip install poster

# Init repo (you find this then in .confluence-asciidoctor/config)
confluence-asciidoctor init --url https://your.confluence.server.com/display/NAME

# Example upload
confluence-asciidoctor publish example.txt

# Example download
confluence-asciidoctor download "Minutes"
