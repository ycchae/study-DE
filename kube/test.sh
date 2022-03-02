ip=(
10.244.173.132
10.244.215.5
10.244.215.4
)
for ep in ${ip[@]};do
  wget -qO- $ep
done
