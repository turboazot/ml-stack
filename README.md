# Jupyter -> Livy -> Spark

## Install spark-operator

Configure `values-so.yaml` and deploy helm chart:
```bash
$ ./bin/deploy-spark-operator.sh
```

## Install JupyterHub

Configure `values-jupyter.yaml` and deploy helm chart:
```bash
$ ./bin/deploy-jupyter.sh
```

Login with these credentials:

Login: **user**

Password: **bitnami1**

In newly started pod create Sparkmagic configuration file:
```bash
$ kubectl get po -n livy
$ kubectl exec -it jupyter-user bash
jovyan@jupyter-user:~$ mkdir ~/.sparkmagic
jovyan@jupyter-user:~$ vim ~/.sparkmagic/config.json
# Paste config from config-in-cluster.json
jovyan@jupyter-user:~$ exit
```

After that execute this: Control Panel -> Stop My Server -> Start My Server

## Install Livy

Configure `values-livy.yaml` and deploy helm chart:
```bash
$ ./bin/deploy-livy.sh
```

## Test

In jupyter space go to:

New -> PySpark

Enter this code:
```
print("hello world")
```

After some time you should the the result of execution


More examples here: https://github.com/spark-examples/pyspark-examples/blob/master/pyspark-filter.py