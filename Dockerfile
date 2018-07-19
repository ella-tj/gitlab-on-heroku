FROM gitlab/gitlab-ce

# Wrapper to handle signal, trigger runit and reconfigure GitLab
CMD ["/assets/wrapper"]
