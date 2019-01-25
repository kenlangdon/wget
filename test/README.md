# wget

## Maintainers

* The Habitat Maintainers: <humans@habitat.sh>

## Usage

## Build wget

```
hab pkg build .
```

## Install wget

```
[hab studio enter]
source results/last_build.env
hab pkg install "results/${pkg_artifact}"
```

## Run wget 

```
[hab studio enter]
source results/last_build.env
hab start "results/${pkg_artifact}"
```

## Test wget 

```
[hab studio enter]
source results/last_build.env
hab pkg export docker "results/${pkg_artifact}"
```

open another terminal and run:
```
source results/last_docker_export.env
docker run -d --name $id $name
inspec exec ./test  -t docker://`docker ps -f name=$id -q` --attrs attributes.yml
```

Sample output:
```
$ source results/last_docker_export.env
$ inspec exec test  -t docker://`docker ps -f name=$id -q` --attrs attributes.yml

SHOULD INCLUDE TEST RESULT HERE
```
