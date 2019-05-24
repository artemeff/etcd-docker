FROM quay.io/coreos/etcd:v3.3

ENV HOST=localhost PORT=2379
EXPOSE 2379

CMD ["etcd", "--listen-client-urls", "http://0.0.0.0:2379", "--advertise-client-urls", "http://0.0.0.0:2379", \
             "--listen-peer-urls", "http://0.0.0.0:2380", "--initial-advertise-peer-urls", "http://0.0.0.0:2380", \
             "--initial-cluster", "default=http://0.0.0.0:2380"]
