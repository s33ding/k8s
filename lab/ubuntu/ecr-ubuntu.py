from config import REGION, REPOSITORY_NAME, IMAGE_NAME, TAG, REGISTRY, USER_NAME
from shared_func.ecr_func import *

docker_login(REGISTRY, USER_NAME)
docker_build(IMAGE_NAME)
docker_tag(IMAGE_NAME, REGISTRY)
docker_push(IMAGE_NAME, REGISTRY)
