for id in $(podman ps -q); do 
  echo "Upgrading $(podman inspect -f '{{.Name}}' $id)"
  podman exec $id dnf upgrade --refresh -y
done
echo "Done"
