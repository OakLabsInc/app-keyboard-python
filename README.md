# app-keyboard

This is meant to demonstrate the correct usage of python to capture keytstokes on OakOS

## Running locally on Linux

### start the container

```bash
xhost +
docker-compose up --build
```

### stop the container

```bash
docker-compose down
```

## Installing on OakOS

```json
{
	"services": [

		{
			"image": "oaklabs/app-keyboard-python:latest",
			"environment": {
                "NODE_ENV": "production",
                "DISPLAY": "unix:0.0"
            }
			
		}
	]
}
```
