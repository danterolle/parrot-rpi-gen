#!/bin/bash -e

if [ "$RELEASE" != "lory" ]; then
	echo "WARNING: RELEASE does not match the intended option for this branch."
	echo "         Please check the relevant README.md section."
fi

if [ ! -d "${ROOTFS_DIR}" ] || [ "${USE_QCOW2}" = "1" ]; then
	bootstrap ${RELEASE} "${ROOTFS_DIR}" https://deb.parrot.sh/parrot
fi
