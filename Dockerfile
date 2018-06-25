FROM codenvy/cpp

# Download and install Exercism CLI
RUN wget https://github.com/exercism/cli/releases/download/v2.4.1/exercism-linux-64bit.tgz
RUN tar -xzvf exercism-linux-64bit.tgz
RUN mkdir ~/bin
RUN mv exercism ~/bin/
RUN export PATH=$HOME/bin:$PATH
RUN echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

# Create working directory
WORKDIR /root/exercism/cpp
VOLUME /root/exercism/cpp

ENTRYPOINT ~/bin/exercism fetch cpp && bash
