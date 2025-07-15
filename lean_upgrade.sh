#!/bin/bash
for id in $(podman ps -q); do
  podman exec $id dnf upgrade --refresh -y
done
