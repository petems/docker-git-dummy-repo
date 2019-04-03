FROM cirocosta/gitserver-http

RUN git init --bare /var/lib/git/dummy-repo.git
RUN cd /var/lib/git/dummy-repo.git && git init && touch README.md && git add . && git commit -m "initial commit" && git log
RUN cd /var/lib/git/dummy-repo.git && git checkout -b "duplicate-branch-1" && git checkout -b "duplicate-branch-2" && git checkout master
RUN chmod -R 0775 /var/lib/git/
RUN chown -R git:git /var/lib/git/

ENTRYPOINT [ "entrypoint" ]
CMD [ "-start" ]
