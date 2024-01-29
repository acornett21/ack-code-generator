apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: ack-namespaces-cache-{{ .ServicePackageName }}-controller
rules:
- apiGroups:
  - ""
  resources:
  - namespaces
  verbs:
  - get
  - list
  - watch
---
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: ack-configmaps-cache-{{ .ServicePackageName }}-controller
  namespace: {{ "{{ .Release.Namespace }}" }}
rules:
- apiGroups:
  - ""
  resources:
  - configmaps
  verbs:
  - get
  - list
  - watch