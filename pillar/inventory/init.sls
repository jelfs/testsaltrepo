---
inventory:
  clusters:
    p3tprd998:
      type: ceph
      env: test
      ceph_release: 18.2.4
      ceph_release_codename: Reef
      storage_types:
      - block
      - object
      - file
      hosts:
        testceph22351.cloud.phx3.gdg:
          role:
          - ceph-mds
          - ceph-osd
      vip_fqdn: p3tprd998.cloudstorage.secureserver.net
      vip_ip: 173.201.147.193
