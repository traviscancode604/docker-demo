#!/bin/bash
docker run --name ${CONTAINER_NAME} -v ${HOST_MOUNT_PATH}:/app/logs -it -u 1001 --rm ${FULL_IMAGE_NAME}
