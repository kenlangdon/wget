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
$ inspec exec ./test  -t docker://`docker ps -f name=$id -q` --attrs attributes.yml

Profile: Habitat Core Plan wget (wget)
Version: 0.1.0
Target:  docker://68e96315fe27e284a5d59b82a09da2d99b88fb7975fdbaf72a2f0ce66f28a0fa

  Bash command wget --spider -S "http://www.google.com" 2>&1 | grep "HTTP/"
     ✔  stdout should match /HTTP\/1.1 200 OK/
     ✔  stderr should eq ""
     ✔  exit_status should eq 0
  File /bin/wget
     ✔  should exist

Test Summary: 4 successful, 0 failures, 0 skipped
```
