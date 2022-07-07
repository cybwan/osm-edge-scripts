# osm-edge-scripts

## OSM_HOME

默认将**osm-edge-scripts**同级的**osm-edge**目录作为**OSM_HOME**；或者手动设置**OSM_HOME**

## make reload-images

自动拉取osm-edge、例子、测试用例编译及运行所依赖的镜像，并转存到本地**kind-registry**(http://localhost:5000)

## make reload-flomesh-images

自动拉取**flomesh**的**pipy**的镜像，一般用于刷新**flomesh**的**pipy**的镜像

## make cache/cancel-cache

替换**osm-edge**项目所依赖的镜像为本地**kind-registry**的镜像，以便加快编译及启动速度

## make goproxy/disable-goproxy

编译**osm-edge**镜像时启用国内的**golang**代理，以避免额外启动科学上网

## make disable-autobuild/enable-autobuild

禁止例子及测试用例运行前自动编译，相应的，运行前需要手动编译

## make dev

任务**cache**、**goproxy**、**disable-autobuild**的合集任务

## make build

编译osm-edge的cli和镜像