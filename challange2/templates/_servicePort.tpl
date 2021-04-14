{{- define "servicePort" -}}
{{- if eq .Values.service.type "ClusterIP" -}}
type: ClusterIP
ports:
  - port: {{ .Values.service.ClusterIP_port }}
    targetPort: 80
    protocol: TCP
    name: http
{{- else if eq .Values.service.type "NodePort" -}}
type: NodePort
ports:
  - port: {{ .Values.service.nodePort_port }}
    targetPort: 80
    protocol: TCP
    name: http
{{- else if eq .Values.service.type "LoadBalancer" -}}
type: LoadBalancer
ports:
  - port: {{ .Values.service.LoadBalancer_port }}
    targerPort: 80
    protocol: TCP
    name: http
{{- end -}}
{{- end -}}