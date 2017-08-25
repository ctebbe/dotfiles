source $HOME/src/env/profile
[[ -s ~/.bashrc ]] && source ~/.bashrc

eval "$(rbenv init -)"
# eval "$(docker-machine env default)"
alias old_redshift="psql postgresql://caleb@ossus.c5bbcnvxnmdd.us-east-1.redshift.amazonaws.com:5439/analytics?sslmode=verify-ca"
alias old_suredshift="psql postgresql://coinbase@ossus.c5bbcnvxnmdd.us-east-1.redshift.amazonaws.com:5439/analytics?sslmode=verify-ca"

alias audit_suredshift="psql postgresql://coinbase@ossus-audit-from-yesterday.c5bbcnvxnmdd.us-east-1.redshift.amazonaws.com:5439/analytics"

alias redshift="psql postgresql://caleb@euclid.c5bbcnvxnmdd.us-east-1.redshift.amazonaws.com:5439/analytics?sslmode=verify-ca"
alias suredshift="psql postgresql://coinbase@euclid.c5bbcnvxnmdd.us-east-1.redshift.amazonaws.com:5439/analytics?sslmode=verify-ca"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(nodenv init -)"
