# f-droid-repo

## Build the docker image 

```bash
docker build --network host -t ghcr.io/radio-quetsch/fdroidserver:main .
```

## Update repository

### APK

First add the new apk in `./repo` directory pay attention how you named it eg. `quetschapp_v1.0.2.apk`

### Changelog

add a changelog file in `./metadata/com.quetschapp/en-US/changelogs` filename have to match with `CurrentVersionCode:` value in `./metadata/com.quetschapp.yml`

### Update the current release

```bash
docker run --rm -u ${UID}:${GID} -v ${PWD}:/repo ghcr.io/radio-quetsch/fdroidserver:main update --create-metadata
```