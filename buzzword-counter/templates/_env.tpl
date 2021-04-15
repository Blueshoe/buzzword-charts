{{/*
Wrap env variables
*/}}
{{- define "buzzword-counter.envVariables" -}}
- name: DJANGO_SECRET_KEY
  valueFrom:
    secretKeyRef:
      name: buzzword-counter-secrets
      key: DJANGO_SECRET_KEY
- name: DATABASE_HOST
  valueFrom:
    secretKeyRef:
      name: buzzword-counter-postgresql-custom
      key: postgresql-host
- name: DATABASE_USER
  valueFrom:
    secretKeyRef:
      name: buzzword-counter-postgresql-custom
      key: postgresql-user
- name: DATABASE_NAME
  valueFrom:
    secretKeyRef:
      name: buzzword-counter-postgresql-custom
      key: postgresql-name
- name: DATABASE_PASSWORD
  valueFrom:
    secretKeyRef:
      name: buzzword-counter-postgresql-custom
      key: postgresql-password
{{- end -}}
