# confluence-asciidoctor
Write text in "asciidoctor" format and publish it in confluence.
asciidoctor can be found here: http://asciidoctor.org/

# Install
sudo gem install asciidoctor
# python2
sudo dnf install python-lxml 

pip install poster

# Example upload
confluence-asciidoctor upload -p "Test" example.txt
# Example download
confluence-asciidoctor download "Minutes"
