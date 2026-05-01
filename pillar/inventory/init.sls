      hosts:
        p3tlprx001.cloud.phx3.gdg:
          role: [http-proxy]
          floating_ip: 10.47.15.23
          illumio_labels: [manual]
        p3tlprx002.cloud.phx3.gdg:
          role: [http-proxy]
          floating_ip: 10.47.13.56
          illumio_labels: [manual]

    proxy-sin:
      type: proxy
      env: prod
      net_zone: prd
      vip_ip: 10.37.5.2
      vip_fqdn: sinproxy.storage.int.gdcorp.tools
      datacenter: sg2
      hosts:
        sg2plprx001.cloud.sin2.gdg:
          role: [http-proxy]
          floating_ip: 10.37.18.141
          illumio_labels: [manual]
        sg2plprx002.cloud.sin2.gdg:
          role: [http-proxy]
          floating_ip: 10.37.18.34
          illumio_labels: [manual]

    proxy-sxb:
      type: proxy
      env: prod
      net_zone: prd
      vip_ip: 10.47.38.3
      vip_fqdn: sxbproxy.storage.int.gdcorp.tools
      datacenter: sxb1
      hosts:
        sxb1plprx001.cloud.sxb1.gdg:
          role: [http-proxy]
          floating_ip: 10.47.54.19
          illumio_labels: [manual]
        sxb1plprx002.cloud.sxb1.gdg:
          role: [http-proxy]
          floating_ip: 10.47.54.33
          illumio_labels: [manual]
git/storage-ps-ceph-salt - (master) > 
git/storage-ps-ceph-salt - (master) > 
git/storage-ps-ceph-salt - (master) > clear

git/storage-ps-ceph-salt - (master) > cat pillar/inventory/init.sls
---
inventory:
  clusters:
    a2pcor001:
      type: ceph
      env: prod
      net_zone: cor-svc
      vip_ip: 10.152.27.202
      vip_fqdn: a2pcor001.cloudstorage.secureserver.net
      datacenter: a2
      storage_types:
        - object
        - file
      hosts:
        a2plceph125.prod.iad2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2SB03.08
        a2plceph126.prod.iad2.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: A2SB03.08
        a2plceph127.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: A2SB03.08
        a2plceph128.prod.iad2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2SB04.10
        a2plceph129.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: A2SB04.10
        a2plceph130.prod.iad2.gdg:
          role: [ceph-mds, ceph-osd]
          rack: A2SB04.10
        a2plceph131.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: A2SB05.01
        a2plceph132.prod.iad2.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: A2SB05.01
        a2plceph133.prod.iad2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2SB05.01

    a2pkibpprd001:
      type: ceph
      env: prod
      net_zone: pki
      vip_ip: 10.42.1.1
      vip_fqdn: a2p-ceph.pki.gdg
      datacenter: a2
      storage_types:
        - object
      hosts:
        a2plpkibceph001.pki.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2PB01.05
        a2plpkibceph002.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph003.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: A2PB01.04
        a2plpkibceph004.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph005.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph006.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph007.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph008.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: A2PB01.03
        a2plpkibceph009.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph010.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph011.pki.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2PB01.04
        a2plpkibceph012.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: A2PB01.05
        a2plpkibceph013.pki.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2PB01.03
        a2plpkibceph014.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph015.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph016.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph017.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph018.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph019.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph020.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph021.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph022.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: A2PB01.02
        a2plpkibceph023.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph024.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph025.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph026.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph027.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph028.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph029.pki.gdg:
          role: [ceph-osd, ceph-mon]
          rack: A2PB01.02
        a2plpkibceph030.pki.gdg:
          role: [ceph-osd, ceph-mon]
          rack: A2PB01.02
        a2plpkibceph031.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph032.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph033.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph034.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph035.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph036.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph037.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph038.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: A2PB01.02
        a2plpkibceph039.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph040.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph041.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph042.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph043.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph044.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph045.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph046.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph047.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph048.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph049.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph050.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph051.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph052.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.02
        a2plpkibceph053.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph054.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph055.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph056.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.03
        a2plpkibceph057.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05
        a2plpkibceph058.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph059.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.04
        a2plpkibceph060.pki.gdg:
          role: [ceph-osd]
          rack: A2PB01.05

    a2pmah001:
      type: ceph
      env: prod
      net_zone: mah
      datacenter: a2
      connection_status: insecure
      storage_types:
        - block
      hosts:
        a2plceph044.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: a2pmah001-mgr-mon-osd-rbd-backup
          rack: A2SB03.05
        a2plceph045.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB03.05
        a2plceph046.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB03.05
        a2plceph047.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB03.05
        a2plceph048.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          role_illumio_override: a2pmah001-mon-osd-rbd-backup
          rack: A2SB05.11
        a2plceph049.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.11
        a2plceph050.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.11
        a2plceph051.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.11
        a2plceph052.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: a2pmah001-mgr-mon-osd-rbd-backup
          rack: A2SB05.03
        a2plceph053.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.03
        a2plceph054.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.03
        a2plceph055.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.03
        a2plceph056.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: a2pmah001-mgr-mon-osd-rbd-backup
          rack: A2SB05.04
        a2plceph057.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.04
        a2plceph058.prod.iad2.gdg:
          role: [ceph-osd]
          role_illumio_override: a2pmah001-osd
          rack: A2SB05.04
        a2plceph059.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          role_illumio_override: a2pmah001-mon-osd-rbd-backup
          rack: A2SB05.04

    a2pmgt001:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: a2
      connection_status: insecure
      storage_types:
        - block
      hosts:
        a2plceph060.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB04.09
        a2plceph061.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB05.01
        a2plceph062.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB04.08
        a2plceph063.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB04.09
        a2plceph064.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB04.08
        a2plceph065.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB05.01

    a2pmgt002:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: a2
      connection_status: insecure
      storage_types:
        - file
        - block
      hosts:
        a2plceph066.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: A2SB04.08
        a2plceph067.prod.iad2.gdg:
          role: [ceph-mon, ceph-mds, ceph-osd, ceph-rbd]
          rack: A2SB05.01
        a2plceph068.prod.iad2.gdg:
          role: [ceph-mon, ceph-mds, ceph-osd, ceph-rbd]
          rack: A2SB04.09
        a2plceph069.prod.iad2.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: A2SB04.08
        a2plceph070.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: A2SB04.09
        a2plceph071.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: A2SB05.01
        a2plceph101.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB04.09
        a2plceph102.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB04.09
        a2plceph103.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB04.09
        a2plceph104.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB05.01
        a2plceph105.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB04.08
        a2plceph106.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB05.01
        a2plceph107.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB04.08
        a2plceph108.prod.iad2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: A2SB05.01

    a2pprd001:
      type: ceph
      env: prod
      net_zone: prd
      vip_ip: 97.74.76.110
      vip_fqdn: a2pprd001.cloudstorage.secureserver.net
      datacenter: a2
      connection_status: insecure
      storage_types:
        - object
        - file
      hosts:
        a2plceph109.prod.iad2.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph110.prod.iad2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph111.prod.iad2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph112.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph113.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph114.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph115.prod.iad2.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph116.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph117.prod.iad2.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: A2SB05.08
        a2plceph118.prod.iad2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: A2SB05.08
        a2plceph119.prod.iad2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: A2SB05.08
        a2plceph120.prod.iad2.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: A2SB05.08
        a2plceph121.prod.iad2.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: A2SB03.12
        a2plceph122.prod.iad2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: A2SB03.12
        a2plceph123.prod.iad2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: A2SB03.12
        a2plceph124.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB03.12

    a2pprd002:
      type: ceph
      env: prod
      net_zone: prd
      datacenter: a2
      vip_ip: 10.153.27.198
      vip_fqdn: a2pprd002.storage.gdinf.net
      connection_status: insecure
      storage_types:
        - block
      hosts:
        a2plceph072.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph073.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph074.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph075.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph076.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph077.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph078.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph079.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph080.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph081.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph082.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph083.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph084.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph085.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph086.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph087.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph088.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph089.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph090.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph091.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph092.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph093.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph094.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph095.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph096.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph097.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12
        a2plceph098.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph099.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.10
        a2plceph100.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.12

    a2pprd003:
      type: ceph
      env: prod
      net_zone: prd-svc
      vip_ip: 10.153.27.199
      vip_fqdn: a2pprd003.cloudstorage.secureserver.net
      datacenter: a2
      storage_types:
        - object
        - file
      hosts:
        a2plceph134.prod.iad2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2SB03.08
        a2plceph135.prod.iad2.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: A2SB03.08
        a2plceph136.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: A2SB03.08
        a2plceph137.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: A2SB04.10
        a2plceph138.prod.iad2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2SB04.10
        a2plceph139.prod.iad2.gdg:
          role: [ceph-mds, ceph-osd]
          rack: A2SB04.10
        a2plceph140.prod.iad2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: A2SB05.01
        a2plceph141.prod.iad2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: A2SB05.01
        a2plceph142.prod.iad2.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: A2SB05.01

    a2pprd004:
      type: ceph
      env: prod
      net_zone: prd-svc
      datacenter: a2
      storage_types:
        - block
      hosts:
        a2plceph143.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.01
        a2plceph144.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.10
        a2plceph145.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.10
        a2plceph146.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.01
        a2plceph147.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.10
        a2plceph148.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.01
        a2plceph149.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB04.10
        a2plceph150.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB05.01
        a2plceph151.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB03.08
        a2plceph152.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB03.08
        a2plceph153.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB03.08
        a2plceph154.prod.iad2.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB03.08

    a2tprd002:
      type: ceph
      env: test
      net_zone: prd
      datacenter: a2
      connection_status: insecure
      storage_types:
        - block
        - file
      hosts:
        a2plcephosd200.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-mds, ceph-rbd]
          illumio_labels: [manual]
          rack: A2SB06.06
        a2plcephosd201.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: A2SB06.06
        a2plcephosd202.prod.iad2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: A2SB06.06
        a2plcephosd204.prod.iad2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: A2SB06.06

    cgn-bf01:
      type: ceph
      env: prod
      net_zone: unknown
      datacenter: cgn1
      connection_status: insecure
      vip_fqdn: library.emeaint.godaddy.com
      hosts:
        ceph-mgmt0.cgn.ba.heg.com:
          role: [ceph-mon, ceph-mgr, recomm-ceph-rgw]
          rack: CGN1SA05.34
        ceph-mgmt1.cgn.ba.heg.com:
          role: [ceph-mon, ceph-mgr, recomm-ceph-rgw, ceph-mds]
          rack: CGN1SA05.35
        ceph-mgmt2.cgn.ba.heg.com:
          role: [ceph-mon, ceph-mgr, recomm-ceph-rgw, ceph-mds]
          rack: CGN1SA05.34
        ceph0.cgn.ba.heg.com:
          role: [ceph-osd]
          rack: CGN1SA05.34
        ceph1.cgn.ba.heg.com:
          role: [ceph-osd]
          rack: CGN1SA05.35
        ceph2.cgn.ba.heg.com:
          role: [ceph-osd]
          rack: CGN1SA05.34
        ceph3.cgn.ba.heg.com:
          role: [ceph-osd]
          rack: CGN1SA05.35
        ceph4.cgn.ba.heg.com:
          role: [ceph-osd]
          rack: CGN1SA05.34
        ceph5.cgn.ba.heg.com:
          role: [ceph-osd]
          rack: CGN1SA05.35

    cgn-bf03:
      type: ceph
      env: prod
      net_zone: unknown
      datacenter: cgn1
      connection_status: insecure
      vip_fqdn: library.ote.emeaint.godaddy.com
      hosts:
        ceph0-ote:
          role: [ceph-mon, ceph-mgr, ote-ceph-rgw, ceph-mds, ceph-osd]
        ceph1-ote:
          role: [ceph-mon, ceph-mgr, ote-ceph-rgw, ceph-mds, ceph-osd]
        ceph2-ote:
          role: [ceph-mon, ceph-mgr, ote-ceph-rgw, ceph-mds, ceph-osd]

    cgn1pgcn001:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      vip_ip: 92.205.81.241
      vip_fqdn: cgn1pgcn001.storage.gdinf.net
      datacenter: cgn1
      connection_status: insecure
      storage_types:
        - object
      hosts:
        cgn1plceph001.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph002.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.39
        cgn1plceph003.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.38
        cgn1plceph004.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.39
        cgn1plceph005.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.38
        cgn1plceph006.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.39
        cgn1plceph007.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph008.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.39
        cgn1plceph009.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.39
        cgn1plceph010.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.38
        cgn1plceph011.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph012.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.39

    cgn1pgcn002:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      vip_ip: 92.205.81.242
      vip_fqdn: cgn1pgcn002.storage.gdinf.net
      datacenter: cgn1
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - file
        - object
      hosts:
        cgn1plceph013.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph014.prod.cgn1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: CGN1SA11.39
        cgn1plceph015.prod.cgn1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph016.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.39
        cgn1plceph017.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.38
        cgn1plceph018.prod.cgn1.gdg:
          role: [ceph-osd]
          rack: CGN1SA11.39
        cgn1plceph019.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph020.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.39
        cgn1plceph021.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.38
        cgn1plceph022.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.39
        cgn1plceph023.prod.cgn1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          rack: CGN1SA11.38
        cgn1plceph024.prod.cgn1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: CGN1SA11.39

    p3pcor001:
      type: ceph
      env: prod
      net_zone: cor-svc
      vip_ip: 10.152.7.197
      vip_fqdn: p3pcor001.cloudstorage.secureserver.net
      datacenter: p3
      storage_types:
        - object
        - file
      hosts:
        p3plceph600.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph601.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph602.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph603.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph604.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph605.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph606.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph607.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph608.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph609.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph610.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph611.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph957.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF12.03
        p3plceph958.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph959.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08

    p3pcor002:
      type: ceph
      env: prod
      net_zone: cor-svc
      vip_ip: 10.152.7.198
      vip_fqdn: p3pcor002.cloudstorage.secureserver.net
      datacenter: p3
      storage_types:
        - object
      hosts:
        p3plceph800.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC13.29
        p3plceph801.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC13.29
        p3plceph802.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC13.31
        p3plceph803.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC13.29
        p3plceph804.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC12.12
        p3plceph805.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC13.31
        p3plceph806.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC12.12
        p3plceph807.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.12
        p3plceph808.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC13.31

    p3pdev001:
      type: ceph
      env: prod
      net_zone: dev-svc
      vip_ip: 10.153.167.198
      vip_fqdn: p3pdev001.storage.gdinf.net
      datacenter: p3
      storage_types:
        - file
        - object
      hosts:
        p3plceph939.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          rack: P3SC12.02
        p3plceph940.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.12
        p3plceph941.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC13.31
        p3plceph942.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.12
        p3plceph943.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC12.02
        p3plceph944.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC13.31

    p3ppci002:
      type: ceph
      env: prod
      net_zone: pci-svc
      vip_ip: 10.40.29.160
      vip_fqdn: p3ppci002.storage.gdinf.net
      datacenter: p3
      storage_types:
        - block
        - object
      hosts:
        p3plceph293.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph294.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph295.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph296.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph297.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph298.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph379.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph569.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph570.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph571.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph572.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph573.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph574.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph575.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC15.04
        p3plceph788.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC15.03
        p3plceph789.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rgw]
          rack: P3SC15.03
        p3plceph790.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC15.03
        p3plceph791.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC15.03
        p3plceph792.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          rack: P3SC15.03
        p3plceph793.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC15.03

    p3pkibpprd001:
      type: ceph
      env: prod
      net_zone: pki
      vip_ip: 10.42.17.1
      vip_fqdn: p3pb-ceph.pki.gdg
      datacenter: p3
      storage_types:
        - object
      hosts:
        p3plpkibceph001.pki.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3PB01.05
        p3plpkibceph002.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph003.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3PB01.03
        p3plpkibceph004.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph005.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph006.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph007.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3PB01.05
        p3plpkibceph008.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph009.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph010.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph011.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph012.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3PB01.04
        p3plpkibceph013.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph014.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph015.pki.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3PB01.04
        p3plpkibceph016.pki.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3PB01.03
        p3plpkibceph017.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph018.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph019.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph020.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.02
        p3plpkibceph021.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph022.pki.gdg:
          role: [ceph-osd, ceph-mon]
          rack: P3PB01.02
        p3plpkibceph023.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3PB01.02
        p3plpkibceph024.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph025.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph026.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph027.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph028.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph029.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph030.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph031.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph032.pki.gdg:
          role: [ceph-osd, ceph-mon]
          rack: P3PB01.02
        p3plpkibceph033.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph034.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph035.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph036.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph037.pki.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3PB01.02
        p3plpkibceph038.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.02
        p3plpkibceph039.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.05
        p3plpkibceph040.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.03
        p3plpkibceph041.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.04
        p3plpkibceph042.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.06
        p3plpkibceph043.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.06
        p3plpkibceph044.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph045.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph046.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph047.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph048.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph049.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph050.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph051.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph052.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph053.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph054.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph055.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph056.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph057.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph058.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph059.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph060.pki.gdg:
          role: [ceph-osd]
          rack: P3PB01.07
        p3plpkibceph061.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.01
        p3plpkibceph062.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.01
        p3plpkibceph063.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.01
        p3plpkibceph064.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.02
        p3plpkibceph065.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.02
        p3plpkibceph066.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.02
        p3plpkibceph067.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.03
        p3plpkibceph068.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.03
        p3plpkibceph069.pki.gdg:
          role: [ceph-osd]
          rack: P3PB02.03

    p3pgcn001:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      vip_ip: 68.178.184.225
      vip_fqdn: p3pgcn001.storage.gdinf.net
      datacenter: p3
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - file
        - object
      hosts:
        p3plceph001.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, oh-backup-stats]
          role_illumio_override: p3pgcn001_mgr_mon_osd
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph002.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph003.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph004.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph005.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph006.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph007.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph008.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph009.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph010.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph011.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph012.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph013.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph014.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph015.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph016.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph017.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph018.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph019.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph020.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph021.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph022.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph023.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph024.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph025.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph026.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph027.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph028.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph029.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph030.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph031.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph032.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph033.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph034.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph035.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph036.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph037.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph038.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph039.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph040.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph041.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph042.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph043.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph044.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph045.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph046.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph047.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph048.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph049.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph050.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph051.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph052.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph053.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph054.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph055.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph056.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph057.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph058.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph059.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph060.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph061.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph062.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph063.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph064.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph065.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph066.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph067.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph068.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph069.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph166.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph167.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph168.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph169.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph170.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph171.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph172.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph173.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph174.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph175.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph176.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph177.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph178.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph179.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph180.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph181.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph182.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph183.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph184.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph185.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph186.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph187.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph188.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph189.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph190.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph191.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph192.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph193.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph194.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph195.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph196.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph197.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph198.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph199.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph200.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph201.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph202.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph203.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph204.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph205.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph206.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph207.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph208.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph209.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph210.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph211.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph212.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph213.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph214.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph215.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph216.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph217.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph218.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph219.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph220.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph221.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph222.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph223.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph224.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph225.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph226.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph227.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph228.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph229.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph230.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph231.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph232.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: P3SC12.05
        p3plceph233.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph234.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph377.prod.phx3.gdg:
          role: [ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph378.prod.phx3.gdg:
          role: [ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC15.24

    p3pgcn002:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      datacenter: p3
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - file
      hosts:
        p3plceph311.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph312.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph313.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph314.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph315.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph316.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph317.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph318.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph319.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph320.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph321.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph322.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph323.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph324.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph325.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph326.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph327.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph330.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph333.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph406.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph407.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph408.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph409.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph410.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph411.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph412.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph413.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph414.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph415.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph416.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph417.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph418.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph419.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph420.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph421.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph422.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph423.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph424.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph425.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph426.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph427.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph428.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph429.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph430.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph431.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph432.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph433.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph434.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph435.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph436.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph437.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph438.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph439.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph440.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph441.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph442.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph443.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph444.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph445.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph446.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph447.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph448.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph449.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph450.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph451.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph452.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph453.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph454.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph455.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph456.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph457.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph458.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph459.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph460.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph461.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph462.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph463.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph464.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph471.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph472.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph473.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph474.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph475.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph476.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph477.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph478.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph479.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph480.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph481.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph482.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph483.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph484.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph485.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph486.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph487.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph488.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph489.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph490.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph491.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph492.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph493.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph494.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph495.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph496.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph497.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph498.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph499.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph500.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph512.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph513.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph514.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph515.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph516.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph517.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph518.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph519.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph520.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph521.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph522.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph523.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph524.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph525.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph526.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.29
        p3plceph527.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph528.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30

    p3pgcn003:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph266.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.28
        p3plceph278.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.30
        p3plceph279.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC12.03
        p3plceph280.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.29
        p3plceph281.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.30
        p3plceph282.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.04
        p3plceph283.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC15.30
        p3plceph284.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.29
        p3plceph285.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.27
        p3plceph286.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC15.29
        p3plceph287.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: P3SC15.27
        p3plceph288.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: P3SC15.28
        p3plceph289.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.28
        p3plceph290.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC12.03
        p3plceph291.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC15.27
        p3plceph292.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC12.04

    p3pgcn004:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph529.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.14
        p3plceph530.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.14
        p3plceph531.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.14
        p3plceph532.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.14
        p3plceph533.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.14
        p3plceph534.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.15
        p3plceph535.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.15
        p3plceph536.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.15
        p3plceph537.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.15
        p3plceph538.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.15
        p3plceph539.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.16
        p3plceph540.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.16
        p3plceph541.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.16
        p3plceph542.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.16
        p3plceph543.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.16
        p3plceph544.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.17
        p3plceph545.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.17
        p3plceph546.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.17
        p3plceph547.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.17
        p3plceph548.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.17
        p3plceph549.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.18
        p3plceph550.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.18
        p3plceph551.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.18
        p3plceph552.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.18
        p3plceph553.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.18
        p3plceph554.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.19
        p3plceph555.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.19
        p3plceph556.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.19
        p3plceph557.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.19
        p3plceph558.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SE18.19

    p3pgcn005:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      datacenter: p3
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - file
      hosts:
        p3plceph507.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.28
        p3plceph508.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph509.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.30
        p3plceph510.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph511.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.27
        p3plceph668.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph669.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph670.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph671.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph672.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph673.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph674.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph675.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph676.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph677.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph678.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph679.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph680.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph681.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph682.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph683.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph684.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph685.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph686.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph687.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph688.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph689.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph690.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph691.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph692.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph693.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph694.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph695.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph696.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph697.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph698.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph699.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph700.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph701.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph702.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph703.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph704.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph705.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph706.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph707.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph708.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph709.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph710.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph711.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph712.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph713.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph714.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph715.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph716.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph717.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph718.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph719.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.29
        p3plceph720.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC13.30
        p3plceph721.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.10
        p3plceph722.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph723.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph724.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph725.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph726.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph727.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph728.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph729.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.24
        p3plceph730.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph731.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph732.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph733.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph734.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph735.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph736.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph737.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.25
        p3plceph738.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph739.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph740.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph741.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph742.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph743.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph744.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph745.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC15.26
        p3plceph976.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.03
        p3plceph977.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.04
        p3plceph978.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph979.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph980.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph981.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph982.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph983.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.06
        p3plceph984.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph985.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph986.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph987.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph988.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph989.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph990.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.13
        p3plceph991.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph992.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph993.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph994.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph995.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph996.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.18
        p3plceph997.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph998.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph999.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph1000.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph1001.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10
        p3plceph1002.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.10

    p3pgcn006:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph821.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.23
        p3plceph822.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph823.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph824.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph825.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph826.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn006_mds_mgr_mon_osd
          rack: P3SF18.21
        p3plceph827.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph828.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph829.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph830.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.19
        p3plceph831.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph832.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn006_mds_mgr_mon_osd
          rack: P3SF18.18
        p3plceph833.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph834.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph835.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.16
        p3plceph836.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16

    p3pgcn007:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph837.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph838.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.22
        p3plceph839.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph840.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn007_mds_mgr_mon_osd
          rack: P3SF18.20
        p3plceph841.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph842.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn007_mds_mgr_mon_osd
          rack: P3SF18.17
        p3plceph843.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph844.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph845.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph846.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph847.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph848.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph849.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph850.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.21
        p3plceph851.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph852.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.18

    p3pgcn008:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph853.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.19
        p3plceph854.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph855.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph856.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph857.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph858.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn008_mds_mgr_mon_osd
          rack: P3SF18.23
        p3plceph859.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn008_mds_mgr_mon_osd
          rack: P3SF18.16
        p3plceph860.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph861.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph862.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph863.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph864.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph865.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.20
        p3plceph866.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph867.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.17
        p3plceph868.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23

    p3pgcn009:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph869.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph870.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.19
        p3plceph871.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.16
        p3plceph872.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph873.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph874.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph875.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph876.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph877.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph878.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph879.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.22
        p3plceph880.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn009_mds_mgr_mon_osd
          rack: P3SF18.21
        p3plceph881.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn009_mds_mgr_mon_osd
          rack: P3SF18.18
        p3plceph882.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph883.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph884.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16

    p3pgcn010:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph885.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph886.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.18
        p3plceph887.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.22
        p3plceph888.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph889.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph890.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.20
        p3plceph891.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph892.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph893.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph894.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph895.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn010_mds_mgr_mon_osd
          rack: P3SF18.23
        p3plceph896.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn010_mds_mgr_mon_osd
          rack: P3SF18.17
        p3plceph897.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph898.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph899.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph900.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22

    p3pgcn011:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph901.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph902.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph903.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph904.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph905.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph906.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph907.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph908.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.21
        p3plceph909.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.16
        p3plceph910.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph911.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.19
        p3plceph912.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph913.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph914.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph915.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn011_mds_mgr_mon_osd
          rack: P3SF18.23
        p3plceph916.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn011_mds_mgr_mon_osd
          rack: P3SF18.17

    p3pgcn012:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph917.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph918.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph919.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.22
        p3plceph920.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph921.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph922.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.20
        p3plceph923.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph924.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.16
        p3plceph925.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph926.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn012_mds_mgr_mon_osd
          rack: P3SF18.19
        p3plceph927.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph928.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph929.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph930.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph931.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn012_mds_mgr_mon_osd
          rack: P3SF18.18
        p3plceph932.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22

    p3pgcn013:
      type: ceph
      env: prod
      net_zone: gcn-mah
      vip_ip: 10.202.135.203
      vip_fqdn: p3pgcn013.storage.int.gdinf.net
      datacenter: p3
      storage_types:
        - block
        - file
        - object
      hosts:
        p3plceph933.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.05
        p3plceph934.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rgw]
          rack: P3SC12.06
        p3plceph935.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.06
        p3plceph936.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.05
        p3plceph937.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          rack: P3SC15.27
        p3plceph938.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: P3SC15.27

    p3pgcn014:
      type: ceph
      env: prod
      net_zone: gcn-mah
      vip_ip: 10.202.135.212
      vip_fqdn: p3pgcn014.storage.int.gdinf.net
      datacenter: p3
      storage_types:
        - object
      hosts:
        p3plceph945.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.03
        p3plceph946.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.03
        p3plceph947.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC12.03
        p3plceph948.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC12.03
        p3plceph949.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.04
        p3plceph950.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.04
        p3plceph951.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.04
        p3plceph952.prod.phx3.gdg:
          role: [ceph-osd]
          rack: P3SC12.04
        p3plceph953.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.05
        p3plceph954.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC12.05
        p3plceph955.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.05
        p3plceph956.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: P3SC12.05

    p3pgcn015:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        p3plceph960.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.22
        p3plceph961.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.16
        p3plceph962.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.22
        p3plceph963.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SF18.23
        p3plceph964.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn015_mds_mgr_mon_osd
          rack: P3SF18.19
        p3plceph965.prod.phx3.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: p3pgcn015_mds_mgr_mon_osd
          rack: P3SF18.21
        p3plceph966.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph967.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph968.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.20
        p3plceph969.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.19
        p3plceph970.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17
        p3plceph971.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.18
        p3plceph972.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.16
        p3plceph973.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.23
        p3plceph974.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.21
        p3plceph975.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SF18.17

    p3pmah001:
      type: ceph
      env: prod
      net_zone: mah
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph754.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC12.23
        p3plceph755.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah001-mgr-mon-osd-rbd-backup
          rack: P3SC12.23
        p3plceph756.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC12.23
        p3plceph757.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah001-mgr-mon-osd-rbd-backup
          rack: P3SC12.21
        p3plceph758.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC12.21
        p3plceph759.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC12.21
        p3plceph760.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC12.22
        p3plceph761.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah001-mgr-mon-osd-rbd-backup
          rack: P3SC12.22
        p3plceph762.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC12.22
        p3plceph768.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah001-mon-osd-rbd-backup
          rack: P3SC14.09
        p3plceph769.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah001-osd
          rack: P3SC14.09
        p3plceph770.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah001-mon-osd-rbd-backup
          rack: P3SC14.09

    p3pmah002:
      type: ceph
      env: prod
      net_zone: mah
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph749.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC15.21
        p3plceph750.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah002-mon-osd-rbd-backup
          rack: P3SC15.21
        p3plceph763.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC14.11
        p3plceph764.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah002-mgr-mon-osd-rbd-backup
          rack: P3SC14.11
        p3plceph765.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC14.11
        p3plceph766.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah002-mgr-mon-osd-rbd-backup
          rack: P3SC15.09
        p3plceph767.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC15.09
        p3plceph771.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah002-mgr-mon-osd-rbd-backup
          rack: P3SC15.20
        p3plceph772.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC15.20
        p3plceph773.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC15.20
        p3plceph774.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          role_illumio_override: p3pmah002-mon-osd-rbd-backup
          rack: P3SC15.20
        p3plceph775.prod.phx3.gdg:
          role: [ceph-osd]
          role_illumio_override: p3pmah002-osd
          rack: P3SC15.09

    p3pmgt001:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph130.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SI11.14
        p3plceph358.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI07.15
        p3plceph359.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI06.18
        p3plceph363.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI11.14
        p3plceph365.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          rack: P3SI11.01
        p3plceph366.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          rack: P3SI06.16
        p3plceph794.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SF15.07
        p3plceph795.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SF15.07
        p3plceph796.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SF15.08
        p3plceph797.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SF15.08
        p3plceph798.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SF15.09
        p3plceph799.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SF15.09

    p3pmgt002:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: p3
      connection_status: insecure
      storage_types:
        - file
        - block
      hosts:
        p3plceph367.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI09.02
        p3plceph368.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI09.17
        p3plceph369.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI11.14
        p3plceph370.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          rack: P3SI06.16
        p3plceph371.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          rack: P3SI01.01
        p3plceph372.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-rbd]
          rack: P3SI11.01
        p3plceph501.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SI01.01
        p3plceph502.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SI06.16
        p3plceph503.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-rbd]
          rack: P3SI09.17
        p3plceph504.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SI11.01
        p3plceph505.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-rbd]
          rack: P3SI11.14
        p3plceph506.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SI09.02
        p3plceph612.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC13.29
        p3plceph613.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC13.29
        p3plceph614.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC13.29
        p3plceph615.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC13.29
        p3plceph616.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC13.29
        p3plceph617.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph618.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph619.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph620.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph621.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph622.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph623.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph624.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph625.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.01
        p3plceph626.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph627.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph628.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph629.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph630.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph631.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph632.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph633.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph634.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC14.28
        p3plceph635.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC13.29
        p3plceph746.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.02
        p3plceph747.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.02
        p3plceph748.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SC12.02

    p3pprd001:
      type: ceph
      env: prod
      net_zone: prd
      vip_ip: 216.69.141.52
      vip_fqdn: p3pprd001.cloudstorage.secureserver.net
      datacenter: p3
      connection_status: insecure
      storage_types:
        - object
      hosts:
        p3plceph386.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph387.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph388.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph389.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph390.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plceph391.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plceph392.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: P3SJ02.01
        p3plceph393.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.01
        p3plceph394.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.01
        p3plceph395.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.02
        p3plceph396.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SJ02.02
        p3plceph397.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.02
        p3plceph398.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.03
        p3plceph399.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.03
        p3plceph400.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SJ02.07
        p3plceph401.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.07
        p3plceph402.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.09
        p3plceph403.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.09
        p3plceph404.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plceph405.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plceph576.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.12
        p3plceph577.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.12
        p3plceph578.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.01
        p3plceph579.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.31
        p3plceph580.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.02
        p3plceph636.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.02
        p3plceph637.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph638.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph639.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph640.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.12
        p3plceph641.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.02
        p3plceph642.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.01
        p3plceph643.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.29
        p3plceph644.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.31
        p3plceph645.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph646.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.01
        p3plceph647.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC13.29
        p3plceph648.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC12.01
        p3plceph649.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.12
        p3plceph650.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.02
        p3plceph651.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC13.29
        p3plceph652.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.31
        p3plceph653.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.31
        p3plceph654.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.12
        p3plceph655.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.02
        p3plceph656.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.01
        p3plceph657.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.01
        p3plceph658.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.12
        p3plceph659.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph660.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.29
        p3plceph661.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.31
        p3plceph662.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph663.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.28
        p3plceph664.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.31
        p3plceph665.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.29
        p3plceph666.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.02
        p3plceph667.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.29

    p3pprd002:
      type: ceph
      env: prod
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plcephosd117.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.04
        p3plcephosd119.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.04
        p3plcephosd120.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.04
        p3plcephosd122.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.04
        p3plcephosd151.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.05
        p3plcephosd153.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.05
        p3plcephosd155.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.05
        p3plcephosd158.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.05
        p3plcephosd190.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.15
        p3plcephosd191.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.15
        p3plcephosd192.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.15
        p3plcephosd194.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI02.15
        p3plcephosd317.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI07.05
        p3plcephosd318.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI07.05
        p3plcephosd319.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI07.05
        p3plcephosd320.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI07.05
        p3plcephosd344.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SI08.14
        p3plcephosd345.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI08.14
        p3plcephosd346.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI08.14
        p3plcephosd347.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI08.14
        p3plcephosd399.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SI06.06
        p3plcephosd400.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.06
        p3plcephosd402.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.06
        p3plcephosd404.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.06
        p3plcephosd428.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd435.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd442.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd455.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd456.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd461.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd463.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd464.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plcephosd475.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plcephosd479.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plcephosd480.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plcephosd491.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plcephosd495.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plcephosd507.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02
        p3plcephosd508.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ04.02

    p3pprd003:
      type: ceph
      env: prod
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      storage_types:
        - file
      hosts:
        p3plceph272.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph273.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.02
        p3plceph274.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph275.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.03
        p3plceph276.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plceph277.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.09

    p3pprd004:
      type: ceph
      env: prod
      net_zone: prd
      datacenter: p3
      vip_ip: 10.153.7.229
      vip_fqdn: p3pprd004.storage.gdinf.net
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph559.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph560.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph561.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph562.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph563.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph564.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph565.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph566.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph567.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph568.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph581.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph582.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph583.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph584.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph585.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph586.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph587.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph588.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph589.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph590.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph591.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph592.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph593.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph594.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph595.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph596.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph597.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph598.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10
        p3plceph599.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.10

    p3pprd005:
      type: ceph
      env: prod
      net_zone: prd-svc
      datacenter: p3
      storage_types:
        - block
      hosts:
        p3plceph776.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph777.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph778.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph779.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph780.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph781.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph782.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph783.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph784.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph785.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph786.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph787.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF15.07

    p3pprd006:
      type: ceph
      env: prod
      net_zone: prd-svc
      vip_ip: 10.153.7.210
      vip_fqdn: p3pprd006.cloudstorage.secureserver.net
      datacenter: p3
      storage_types:
        - object
        - file
      hosts:
        p3plceph809.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.01
        p3plceph810.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC12.01
        p3plceph811.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC12.02
        p3plceph812.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC12.02
        p3plceph813.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC12.12
        p3plceph814.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC12.12
        p3plceph815.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC13.29
        p3plceph816.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd]
          rack: P3SC13.31
        p3plceph817.prod.phx3.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: P3SC13.31
        p3plceph818.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: P3SC14.28
        p3plceph819.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC14.28
        p3plceph820.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          rack: P3SC13.29

    p3smgt001:
      type: ceph
      env: stage
      net_zone: mgt
      datacenter: p3
      connection_status: insecure
      cephfs_names: [cephfs01,cephfs02]
      storage_types:
        - block
        - file
      hosts:
        p3plceph360.prod.phx3.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: P3SI06.18
        p3plceph361.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI06.16
        p3plceph362.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI11.01
        p3plceph364.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI06.18
        p3plceph373.cloud.phx3.gdg:
          role: [ceph-mds]
        p3plceph374.cloud.phx3.gdg:
          role: [ceph-mds]
        p3plceph375.cloud.phx3.gdg:
          role: [ceph-mds]
        p3plceph376.cloud.phx3.gdg:
          role: [ceph-mds]

    p3smgt002:
      type: ceph
      env: stage
      net_zone: mgt
      datacenter: p3
      connection_status: insecure
      storage_types:
        - file
        - block
      hosts:
        p3plceph328.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: P3SI11.01
        p3plceph329.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-mds, ceph-osd, ceph-rbd]
          rack: P3SI06.16
        p3plceph331.prod.phx3.gdg:
          role: [ceph-mon, ceph-mgr, ceph-mds, ceph-osd, ceph-rbd]
          rack: P3SI06.16
        p3plceph332.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: P3SI06.18

    p3sprd001:
      type: ceph
      env: stage
      net_zone: prd
      vip_ip: 216.69.141.181
      vip_fqdn: p3sprd001.cloudstorage.secureserver.net
      datacenter: p3
      connection_status: insecure
      storage_types:
        - object
        - file
      hosts:
        p3plceph156.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph164.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph165.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plceph259.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw, ceph-mds]
          illumio_labels: [manual]
          rack: P3SJ01.03
        p3plceph260.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw, ceph-mds]
          illumio_labels: [manual]
          rack: P3SJ02.03
        p3plceph261.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SJ02.07
        p3plceph262.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw, ceph-mds]
          illumio_labels: [manual]
          rack: P3SJ02.09
        p3plceph263.prod.phx3.gdg:
          role: [ceph-mon, ceph-osd, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SJ04.02

    p3sprd002:
      type: ceph
      env: stage
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      cluster_type: mwp
      cephfs_names: [cephfs01,cephfs02,cephfs03]
      storage_types:
        - file
      hosts:
        p3plceph267.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph268.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph269.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph270.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph271.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.12

    p3sprd003:
      type: ceph
      env: stage
      net_zone: mgt
      vip_ip: 10.33.79.31
      vip_fqdn: p3sprd003.storage.gdinf.net
      datacenter: p3
      connection_status: insecure
      storage_types:
        - object
        - block
      hosts:
        p3plceph465.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph466.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SF15.08
        p3plceph467.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph468.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SF15.09
        p3plceph469.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SF15.07
        p3plceph470.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SF15.07

    p3tcorporateftp001:
      type: corpftp
      env: prod
      net_zone: prd
      datacenter: p3
      hosts:
        p3tlcorpftp01.cloud.phx3.gdg:
          role: [corporateftp]
        p3tlcorpftp02.cloud.phx3.gdg:
          role: [corporateftp]

    p3tprd001:
      type: ceph
      env: test
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      storage_types:
        - file
      hosts:
        p3plcephosd706.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.05
        p3plcephosd707.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.05
        p3plcephosd708.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.06
        p3plcephosd709.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SI06.06

    p3tprd002:
      type: ceph
      env: test
      net_zone: prd
      vip_ip: 10.37.83.79
      vip_fqdn: p3tprd002.cloudstorage.secureserver.net
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
        - object
        - file
      hosts:
        p3plceph153.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph154.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph155.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph157.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph158.prod.phx3.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph159.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph160.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph161.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph162.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph163.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph264.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds, ceph-mon, ceph-mgr, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph265.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SJ02.09

    p3tprd003:
      type: ceph
      env: test
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph247.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph248.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph249.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph250.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.12

    p3tprd004:
      type: ceph
      env: test
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
      hosts:
        p3plceph251.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph252.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph253.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph254.prod.phx3.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.12

    p3tprd005:
      type: ceph
      env: test
      net_zone: prd
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
        - file
      hosts:
        p3plceph255.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph256.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph257.prod.phx3.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC12.24
        p3plceph258.prod.phx3.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: P3SC14.12

    p3tprd006:
      type: ceph
      env: test
      net_zone: prd
      vip_ip: 10.37.82.33
      vip_fqdn: p3tprd006.cloudstorage.secureserver.net
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
        - file
        - object
      hosts:
        p3plceph380.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SF13.09
        p3plceph381.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SC13.09
        p3plceph382.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC14.12
        p3plceph383.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SC12.24

    p3tprd007:
      type: ceph
      env: test
      net_zone: prd
      vip_ip: 10.37.82.1
      vip_fqdn: p3tprd007.cloudstorage.secureserver.net
      datacenter: p3
      connection_status: insecure
      storage_types:
        - block
        - file
        - object
      hosts:
        p3plceph334.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SF20.03
        p3plceph335.prod.phx3.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: P3SF20.03
        p3plceph336.prod.phx3.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF20.03
        p3plceph337.prod.phx3.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: P3SF20.03

    sg2pgcn001:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      vip_ip: 148.72.222.225
      vip_fqdn: sg2pgcn001.storage.gdinf.net
      datacenter: sg2
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - block
        - object
        - file
      hosts:
        sg2plceph001.prod.sin2.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, oh-backup-stats]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph002.prod.sin2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph003.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph004.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph005.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph006.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph007.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph008.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph009.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph010.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph011.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph012.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph013.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph014.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph015.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph016.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph017.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph018.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph019.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph020.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph021.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.24
        sg2plceph022.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph023.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph024.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph025.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph026.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph027.prod.sin2.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph028.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph029.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph030.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph031.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph032.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph033.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph034.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph035.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph036.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph037.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph038.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph039.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph040.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph041.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph042.prod.sin2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SG2SB01.19
        sg2plceph043.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph044.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph045.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph046.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph047.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph048.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph049.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph050.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph051.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph052.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph053.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph054.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph055.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph056.prod.sin2.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph057.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph058.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph059.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph060.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph061.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph062.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph063.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph064.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph065.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph066.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph067.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph068.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph069.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph070.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph071.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph072.prod.sin2.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph073.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph074.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph075.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph076.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph077.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph078.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph079.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph080.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph081.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph082.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph083.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph084.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph085.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph086.prod.sin2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SG2SB02.05
        sg2plceph087.prod.sin2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SG2SB02.06
        sg2plceph124.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph125.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph126.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph127.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph128.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph129.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph130.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph131.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph132.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph133.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph134.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph135.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.17
        sg2plceph136.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph137.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph138.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph139.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph140.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph141.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph142.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph143.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph144.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph145.prod.sin2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph146.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph147.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph148.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph149.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph150.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB01.23
        sg2plceph151.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph152.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph153.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph154.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph155.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph156.prod.sin2.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph157.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph158.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph159.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph160.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SB02.16
        sg2plceph161.prod.sin2.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: SG2SB02.16

    sg2pgcn002:
      type: ceph
      env: prod
      net_zone: gcn-mah
      vip_ip: 10.202.55.0
      vip_fqdn: sg2pgcn002.storage.int.gdinf.net
      datacenter: sg2
      storage_types:
        - object
      hosts:
        sg2plceph172.prod.sin2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SG2SB01.23
        sg2plceph173.prod.sin2.gdg:
          role: [ceph-mon, ceph-rgw, ceph-osd]
          rack: SG2SB01.23
        sg2plceph174.prod.sin2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SG2SB02.16
        sg2plceph175.prod.sin2.gdg:
          role: [ceph-mon, ceph-rgw, ceph-osd]
          rack: SG2SB02.16
        sg2plceph176.prod.sin2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SG2SB02.04
        sg2plceph177.prod.sin2.gdg:
          role: [ceph-rgw, ceph-osd]
          rack: SG2SB02.04

    sg2pmah001:
      type: ceph
      env: prod
      net_zone: mah
      datacenter: sg2
      connection_status: insecure
      storage_types:
        - block
      hosts:
        sg2plceph112.prod.sin2.gdg:
          role: [ceph-mon, ceph-rbd-backup, ceph-osd]
          role_illumio_override: sg2pmah001-mgr-mon
          rack: SG2SB02.03
        sg2plceph113.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.12
        sg2plceph114.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-rbd-backup, ceph-osd]
          role_illumio_override: sg2pmah001-mgr-mon
          rack: SG2SB02.20
        sg2plceph115.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.12
        sg2plceph116.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.20
        sg2plceph117.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.12
        sg2plceph118.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.20
        sg2plceph119.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-rbd-backup, ceph-osd]
          role_illumio_override: sg2pmah001-mgr-mon
          rack: SG2SB02.12
        sg2plceph120.prod.sin2.gdg:
          role: [ceph-mon, ceph-rbd-backup, ceph-osd]
          role_illumio_override: sg2pmah001-mgr-mon
          rack: SG2SB02.20
        sg2plceph121.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.03
        sg2plceph122.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-rbd-backup, ceph-osd]
          role_illumio_override: sg2pmah001-mgr-mon
          rack: SG2SB02.03
        sg2plceph123.prod.sin2.gdg:
          role: [ceph-osd]
          role_illumio_override: sg2pmah001-osd
          rack: SG2SB02.03

    sg2pmgt001:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: sg2
      connection_status: insecure
      storage_types:
        - block
      hosts:
        sg2plceph088.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SG2SB02.10
        sg2plceph089.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SG2SB01.06
        sg2plceph090.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SG2SB01.18
        sg2plceph091.prod.sin2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SG2SB02.10
        sg2plceph092.prod.sin2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SG2SB01.18
        sg2plceph093.prod.sin2.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SG2SB01.06

    sg2pmgt002:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: sg2
      connection_status: insecure
      storage_types:
        - block
        - file
      hosts:
        sg2plceph094.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SG2SB01.18
        sg2plceph095.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SG2SB01.06
        sg2plceph096.prod.sin2.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SG2SB02.10
        sg2plceph097.prod.sin2.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: SG2SB01.06
        sg2plceph098.prod.sin2.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: SG2SB02.10
        sg2plceph099.prod.sin2.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: SG2SB01.18

    sg2pprd002:
      type: ceph
      env: prod
      net_zone: prd
      vip_ip: 148.72.44.3
      vip_fqdn: sg2pprd002.cloudstorage.secureserver.net
      datacenter: sg2
      connection_status: insecure
      storage_types:
        - object
        - file
      hosts:
        sg2plceph100.prod.sin2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SG2SA06.09
        sg2plceph101.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SA06.09
        sg2plceph102.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SA06.09
        sg2plceph104.prod.sin2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SG2SA06.10
        sg2plceph105.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SA06.10
        sg2plceph106.prod.sin2.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SG2SA06.10
        sg2plceph108.prod.sin2.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SG2SA05.11
        sg2plceph109.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SA05.11
        sg2plceph110.prod.sin2.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SG2SA05.11
        sg2plcephmds01.cloud.sin2.gdg:
          role: [ceph-mds]
          illumio_labels: [manual]
        sg2plcephmds02.cloud.sin2.gdg:
          role: [ceph-mds]
          illumio_labels: [manual]
        sg2plcephmds03.cloud.sin2.gdg:
          role: [ceph-mds]
          illumio_labels: [manual]

    sxb1pcor001:
      type: ceph
      env: prod
      net_zone: cor
      vip_ip: 10.46.0.66
      vip_fqdn: sxb1pcor001.cloudstorage.secureserver.net
      datacenter: sxb1
      storage_types:
        - object
        - file
      hosts:
        sxb1plceph301.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.14
        sxb1plceph302.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd, ceph-rgw]
          rack: SXB1SA05.14
        sxb1plceph303.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SA05.15
        sxb1plceph304.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.15
        sxb1plceph305.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.16
        sxb1plceph306.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd, ceph-rgw]
          rack: SXB1SA05.16

    sxb1pgcn001:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      vip_ip: 92.204.82.225
      vip_fqdn: sxb1pgcn001.storage.gdinf.net
      datacenter: sxb1
      connection_status: insecure
      storage_types:
        - object
      hosts:
        sxb1plceph001.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          rack: SXB1SD05.05
        sxb1plceph002.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph003.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph004.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph005.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph006.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph007.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          rack: SXB1SD05.05
        sxb1plceph008.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph009.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph010.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph011.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SD05.05
        sxb1plceph012.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          rack: SXB1SD05.05

    sxb1pgcn002:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      vip_ip: 92.204.82.227
      vip_fqdn: sxb1pgcn002.storage.gdinf.net
      datacenter: sxb1
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - block
        - file
        - object
      hosts:
        sxb1plceph013.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr, oh-backup-stats]
          role_illumio_override: sxb1pgcn002_mgr_mon_osd
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph014.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph015.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph016.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph017.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph018.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph019.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph020.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph021.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph022.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph023.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mds]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph024.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon, ceph-mgr]
          illumio_labels: [manual]
          rack: SXB1SD05.06
        sxb1plceph025.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph026.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph027.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph028.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph029.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph030.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph031.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph032.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph033.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph034.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph035.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph036.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph037.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph038.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph039.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph040.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph041.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph042.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph043.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph044.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: SXB1SD05.07
        sxb1plceph045.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph046.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph047.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph048.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph049.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph050.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph051.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph052.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph053.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph054.prod.sxb1.gdg:
          role: [ceph-osd, ceph-mon]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph055.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph056.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph057.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph058.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph059.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph060.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph061.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph062.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph063.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph064.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SD05.08
        sxb1plceph065.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph066.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph067.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph068.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph069.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph070.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph071.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph072.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph073.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph074.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph075.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph076.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph077.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph078.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph079.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph080.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph081.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph082.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph083.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph084.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph085.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph086.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph087.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph088.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph089.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph090.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph091.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph092.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph093.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph094.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph095.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph096.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph097.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph098.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph099.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph100.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph101.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph102.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph103.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph104.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph105.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph106.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph107.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph108.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph109.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph110.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph111.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph112.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph113.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph114.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph115.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph116.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph117.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph118.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph119.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph120.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph121.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph122.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph123.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph124.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph125.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph126.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph127.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph128.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph129.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph130.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph131.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph132.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph133.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph134.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph135.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph136.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph137.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph138.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph139.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph140.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph141.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph142.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph143.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph144.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph145.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.14
        sxb1plceph146.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph147.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph148.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12

    sxb1pgcn003:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: sxb1
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        sxb1plceph173.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph174.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph175.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph176.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.03
        sxb1plceph177.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph178.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.07
        sxb1plceph179.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.01
        sxb1plceph180.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph181.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.01
        sxb1plceph182.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph183.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          rack: SXB1SA05.01
        sxb1plceph184.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph185.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.07
        sxb1plceph186.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph187.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.03
        sxb1plceph188.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.12

    sxb1pgcn004:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      datacenter: sxb1
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - file
      hosts:
        sxb1plceph189.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph190.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph191.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph192.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph193.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph194.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph195.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph196.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph197.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph198.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph199.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph200.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph201.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph202.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph203.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph204.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph205.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph206.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph207.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph208.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph209.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph210.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph211.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph212.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph213.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph214.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph215.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph216.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph217.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph218.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph219.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph220.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph221.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph222.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph223.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph224.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph225.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.15
        sxb1plceph226.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.16
        sxb1plceph247.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph248.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph249.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph250.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph251.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph252.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph253.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph254.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph256.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph257.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph258.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph259.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph260.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph261.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph262.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.03
        sxb1plceph263.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph264.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph265.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph266.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph267.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph268.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph269.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph270.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph271.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph272.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph273.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph274.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph275.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph276.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph277.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph278.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.09
        sxb1plceph279.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph280.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph281.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph282.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph283.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph284.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph285.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph286.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph287.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph288.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph289.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph290.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph291.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph292.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph293.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph294.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.06
        sxb1plceph316.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph317.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph318.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph319.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph320.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph321.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph322.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph323.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph324.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph325.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph326.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph327.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph328.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph329.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.15
        sxb1plceph330.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph331.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph332.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph333.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph334.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph335.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph336.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph337.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph338.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph339.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph340.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph341.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph342.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph343.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph344.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.06
        sxb1plceph345.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph346.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph347.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph348.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph349.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph350.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph351.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph352.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph353.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph354.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09
        sxb1plceph355.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.09

    sxb1pgcn005:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      datacenter: sxb1
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - block
      hosts:
        sxb1plceph227.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.01
        sxb1plceph228.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.01
        sxb1plceph229.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.03
        sxb1plceph230.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.03
        sxb1plceph231.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.03
        sxb1plceph232.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.07
        sxb1plceph233.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA05.07
        sxb1plceph234.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph235.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.10
        sxb1plceph236.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph237.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.12
        sxb1plceph238.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13
        sxb1plceph239.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SA06.13

    sxb1pgcn006:
      type: ceph
      env: prod
      net_zone: gcn-mah
      datacenter: sxb1
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08,cephfs09,cephfs10,cephfs11,cephfs12,cephfs13,cephfs14,cephfs15,cephfs16,cephfs17,cephfs18,cephfs19,cephfs20]
      storage_types:
        - file
      hosts:
        sxb1plceph356.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA06.20
        sxb1plceph357.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph358.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph359.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph360.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph361.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph362.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: sxb1pgcn006_mds_mgr_mon_osd
          rack: SXB1SA05.01
        sxb1plceph363.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA06.20
        sxb1plceph364.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.07
        sxb1plceph365.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA06.21
        sxb1plceph366.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA06.21
        sxb1plceph367.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.01
        sxb1plceph368.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph369.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.03
        sxb1plceph370.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mon, ceph-osd]
          role_illumio_override: sxb1pgcn006_mds_mgr_mon_osd
          rack: SXB1SA05.03
        sxb1plceph371.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA05.07

    sxb1pgcn007:
      type: ceph
      env: prod
      net_zone: gcn-mah
      vip_ip: 10.202.39.2
      vip_fqdn: sxb1pgcn007.storage.int.gdinf.net
      datacenter: sxb1
      storage_types:
        - object
      hosts:
        sxb1plceph372.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph373.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rgw]
          rack: SXB1SA03.11
        sxb1plceph374.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph375.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph376.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rgw]
          rack: SXB1SA03.10
        sxb1plceph377.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rgw]
          rack: SXB1SA03.12

    sxb1pgcn008:
      type: ceph
      env: prod
      net_zone: gcn-mgt
      datacenter: sxb1
      connection_status: insecure
      cluster_type: oh
      storage_types:
        - file
      hosts:
        sxb1plceph378.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph379.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph380.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph381.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph382.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph383.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph384.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph385.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph386.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph387.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph388.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph389.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph390.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph391.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph392.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.12
        sxb1plceph393.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph394.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph395.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph396.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph397.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph398.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph399.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph400.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph401.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph402.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph403.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph404.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph405.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph406.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.14
        sxb1plceph407.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph408.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph409.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph410.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph411.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph412.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph413.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph414.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph415.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph416.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph417.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph418.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph419.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph420.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15
        sxb1plceph421.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ02.15

    sxb1pmah001:
      type: ceph
      env: prod
      net_zone: mah
      datacenter: sxb1
      connection_status: insecure
      storage_types:
        - block
      hosts:
        sxb1plceph307.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: SXB1SJ01.02
        sxb1plceph308.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.02
        sxb1plceph309.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: SXB1SJ01.08
        sxb1plceph310.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.05
        sxb1plceph311.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.08
        sxb1plceph312.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: SXB1SJ01.08
        sxb1plceph313.prod.sxb1.gdg:
          role: [ceph-osd]
          illumio_labels: [manual]
          rack: SXB1SJ01.05
        sxb1plceph314.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: SXB1SJ01.05
        sxb1plceph315.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd-backup]
          illumio_labels: [manual]
          rack: SXB1SJ01.02

    sxb1pmgt001:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: sxb1
      connection_status: insecure
      storage_types:
        - block
      hosts:
        sxb1plceph161.prod.sxb1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph162.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph163.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.15
        sxb1plceph164.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.16
        sxb1plceph165.prod.sxb1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SXB1SA05.16
        sxb1plceph166.prod.sxb1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SXB1SA05.15

    sxb1pmgt002:
      type: ceph
      env: prod
      net_zone: mgt
      datacenter: sxb1
      connection_status: insecure
      storage_types:
        - block
        - file
      hosts:
        sxb1plceph167.prod.sxb1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SXB1SA05.16
        sxb1plceph168.prod.sxb1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SXB1SA05.15
        sxb1plceph169.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: SXB1SA05.16
        sxb1plceph170.prod.sxb1.gdg:
          role: [ceph-mon, ceph-mgr, ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph171.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.15
        sxb1plceph172.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph240.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.15
        sxb1plceph241.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph242.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.15
        sxb1plceph243.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          rack: SXB1SA05.16
        sxb1plceph244.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph245.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.14
        sxb1plceph246.prod.sxb1.gdg:
          role: [ceph-osd, ceph-rbd]
          rack: SXB1SA05.16

    sxb1pprd001:
      type: ceph
      env: prod
      net_zone: prd
      vip_ip: 92.204.80.17
      vip_fqdn: sxb1pprd001.cloudstorage.secureserver.net
      datacenter: sxb1
      connection_status: insecure
      storage_types:
        - object
        - file
      hosts:
        sxb1plceph295.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rgw]
          rack: SXB1SA05.14
        sxb1plceph296.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.14
        sxb1plceph297.prod.sxb1.gdg:
          role: [ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.15
        sxb1plceph298.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd, ceph-rgw]
          rack: SXB1SA05.15
        sxb1plceph299.prod.sxb1.gdg:
          role: [ceph-mon, ceph-osd, ceph-rgw]
          rack: SXB1SA05.16
        sxb1plceph300.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA05.16

    sxb1sgcn001:
      type: ceph
      env: stage
      net_zone: gcn-mah
      datacenter: sxb1
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08]
      storage_types:
        - block
        - file
      hosts:
        sxb1plceph149.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph150.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph151.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph152.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph153.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph154.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.12

    sxb1sgcn002:
      type: ceph
      env: stage
      net_zone: gcn-mah
      datacenter: sxb1
      connection_status: insecure
      cluster_type: mwp2
      cephfs_names: [cephfs01,cephfs02,cephfs03,cephfs04,cephfs05,cephfs06,cephfs07,cephfs08]
      storage_types:
        - file
      hosts:
        sxb1plceph155.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.11
        sxb1plceph156.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph157.prod.sxb1.gdg:
          role: [ceph-mds, ceph-mgr, ceph-mon, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph158.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.12
        sxb1plceph159.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.10
        sxb1plceph160.prod.sxb1.gdg:
          role: [ceph-mds, ceph-osd]
          rack: SXB1SA03.11


    isilon:
      type: isilon
      env: prod
      net_zone: prd
      hosts:
        p3plisiexport01.cloud.phx3.gdg:
          role: [isilon-export]
        p3plisiexport02.cloud.phx3.gdg:
          role: [isilon-export]

    p3pprdperf:
      type: perf-testing
      env: prod
      net_zone: prd
      datacenter: p3
      hosts:
        p3plgseperf01.cloud.phx3.gdg:
          floating_ip: 10.36.44.151
          role: [perf-tests]
        p3plgseperf02.cloud.phx3.gdg:
          floating_ip: 10.36.44.112
          role: [perf-tests]
        p3plgseperf03.cloud.phx3.gdg:
          floating_ip: 10.47.14.206
          role: [perf-tests]
        p3plgseperf04.cloud.phx3.gdg:
          floating_ip: 10.36.44.161
          role: [perf-tests]
        p3plgseperf05.cloud.phx3.gdg:
          floating_ip: 10.47.13.235
          role: [perf-tests]

    nebula-prod:
      type: nebula
      env: prod
      hosts:
        p3plnebss001.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss002.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss003.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss004.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss005.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss006.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss007.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss008.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss009.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss010.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss011.cloud.phx3.gdg:
          role: [nebula]
        p3plnebss012.cloud.phx3.gdg:
          role: [nebula]

    nebula-stage:
      type: nebula
      env: stage
      hosts:
        p3slnebss001.cloud.phx3.gdg:
          role: [nebula]
        p3slnebss002.cloud.phx3.gdg:
          role: [nebula]

    p3pmgtgrafana001:
      type: grafana
      env: prod
      net_zone: mgt
      hosts:
        p3plgrafana01.cloud.phx3.gdg:
          role: [grafana]
        p3plgrafana02.cloud.phx3.gdg:
          role: [grafana]

    p3tmgtgrafana001:
      type: grafana
      env: test
      net_zone: mgt
      hosts:
        p3tlgrafana01.cloud.phx3.gdg:
          role: [grafana]
        p3tlgrafana02.cloud.phx3.gdg:
          role: [grafana]

    redis-thanos:
      type: redis-thanos
      env: prod
      net_zone: mgt
      hosts:
        p3plredis001.cloud.phx3.gdg:
          role: [redis-thanos]
        p3plredis002.cloud.phx3.gdg:
          role: [redis-thanos]
        p3plredis003.cloud.phx3.gdg:
          role: [redis-thanos]

    spares:
      type: spares
      env: prod
      net_zone: prd
      hosts:
        sg2plceph103.prod.sin2.gdg:  # PRD
          role_illumio_override: MISC
        sg2plceph107.prod.sin2.gdg:  # PRD
          role_illumio_override: MISC
        sg2plceph111.prod.sin2.gdg:  # PRD
          role_illumio_override: MISC
        sg2plceph162.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph163.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph164.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph165.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph166.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph167.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph168.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph169.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph170.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sg2plceph171.prod.sin2.gdg:  #GCN-MGT
          role_illumio_override: MISC
        sxb1plceph255.prod.sxb1.gdg:  #GCN-MGT
          role_illumio_override: MISC

    # TODO - rework this group
    utility:
      type: utility
      env: prod
      hosts:
        cccc-master2.cloud.phx3.gdg:
          role: [c4-master, ceph-ops]
        c4.cloud.phx3.gdg:
          role: [c4-master, ceph-ops]
        ceph-pcp-api.cloud.phx3.gdg:
          role: [ceph-pcp-api]
          illumio_labels: [manual]
          net_zone_override: prd
        ceph-pcp-apidev.cloud.phx3.gdg:
          role: [ceph-pcp-api]
          illumio_labels: [manual]
          net_zone_override: prd
        ceph-pcp-apitst.cloud.phx3.gdg:
          role: [ceph-pcp-api]
          illumio_labels: [manual]
          net_zone_override: prd
        p3clcephapi001.cloud.phx3.gdg:
          role: [ceph-pcp-api]
          illumio_labels: [manual]
          net_zone_override: cor-adm
        p3dlcephapi001.cloud.phx3.gdg:
          role: [ceph-pcp-api]
          illumio_labels: [manual]
          net_zone_override: dev

        ceph-utility2.cloud.phx3.gdg:
          role: [ceph-utility, ceph-ops]
          illumio_labels: [manual]

        p3plocorpftp01.cloud.phx3.gdg:
          role: [corpftp-frontend]
          illumio_mgt_server_override: "us-scp8.illum.io:443"
          net_zone_override: prd
        p3plocorpftp02.cloud.phx3.gdg:
          role: [corpftp-frontend]
          illumio_mgt_server_override: ["us-scp8.illum.io:443"]
          net_zone_override: prd
        p3plocorpftp03.cloud.phx3.gdg:
          role: [corpftp-frontend]
          illumio_mgt_server_override: ["us-scp8.illum.io:443"]
          net_zone_override: prd

        a2plpsprom002.cloud.iad2.gdg:
          role: [prometheus]
        a2plpsprom003.cloud.iad2.gdg:
          role: [prometheus]
        n3plpsprom002.cloud.ams3.gdg:
          role: [prometheus]
        n3plpsprom003.cloud.ams3.gdg:
          role: [prometheus]
        p3plpsprom002.cloud.phx3.gdg:
          role: [prometheus]
        p3plpsprom003.cloud.phx3.gdg:
          role: [prometheus]
        sg2plpsprom002.cloud.sin2.gdg:
          role: [prometheus]
        sg2plpsprom003.cloud.sin2.gdg:
          role: [prometheus]
        sxb1plprom01.cloud.sxb1.gdg:
          role: [prometheus]
        sxb1plprom02.cloud.sxb1.gdg:
          role: [prometheus]

        p3plthanos01.cloud.phx3.gdg:
          role: [thanos]

        p3plostorpmsync.cloud.phx3.gdg:
          role: [repo-sync]
        p3plostorpmsyc8.cloud.phx3.gdg:
          role: [repo-sync]
        p3plostorpmsyc9.cloud.phx3.gdg:
          role: [repo-sync]

        p3plocephopsdev.cloud.phx3.gdg:
          role: [ceph-ops-dev]
        p3tlanstest01.cloud.phx3.gdg:
          role: [ceph-ops-dev]
        p3pljceph.cloud.phx3.gdg:
          role: [ceph-ops-dev]

        p3plrgwexport01.cloud.phx3.gdg:
          role: [rgw-exporter]
        p3plrgwexport02.cloud.phx3.gdg:
          role: [rgw-exporter]

        p3plbroexport01.cloud.phx3.gdg:
        p3plbroexport02.cloud.phx3.gdg:
        a2plbroexport01.cloud.iad2.gdg:
        a2plbroexport02.cloud.iad2.gdg:

        sxb1plprom03.cloud.sxb1.gdg:
          role_illumio_override: MISC
          net_zone_override: prd
        sxb1plprom04.cloud.sxb1.gdg:
          role_illumio_override: MISC
          net_zone_override: prd

    a2corsvcutil:
      type: utility
      env: prod
      net_zone: cor-svc
      datacenter: a2
      hosts:
        a2plcorsvcu01.cloud.iad2.gdg:
          floating_ip: 10.128.26.205
          patch_group: a
          role: [dc-utility, ceph-ops]
        a2plcorsvcu02.cloud.iad2.gdg:
          floating_ip: 10.128.26.196
          patch_group: b
          role: [dc-utility, ceph-ops]

    a2mahutil:
      type: utility
      env: prod
      net_zone: mah
      datacenter: a2
      hosts:
        a2plmahu01.prod.iad2.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
          rack: A2SB05.03
        a2plmahu02.prod.iad2.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]
          rack: A2SB03.02

    a2mgtutil:
      type: utility
      env: prod
      net_zone: mgt
      datacenter: a2
      hosts:
        a2plmgtu01.cloud.iad2.gdg:
          floating_ip: 10.28.143.221
          patch_group: a
          role: [dc-utility, ceph-ops]
        a2plmgtu02.cloud.iad2.gdg:
          floating_ip: 10.28.143.187
          patch_group: b
          role: [dc-utility, ceph-ops]

    a2pkiutil:
      type: utility
      env: prod
      net_zone: pki
      datacenter: a2
      hosts:
        a2plpkicephutil01.pki.gdg:
          role: [dc-utility, ceph-ops]
          patch_group: a
        a2plpkiu01.pki.gdg:
          role: [dc-utility, ceph-ops]
          patch_group: a
          rack: A2PB01.03
        a2plpkiu02.pki.gdg:
          role: [dc-utility, ceph-ops]
          patch_group: b
          rack: A2PB01.04

    a2prdutil:
      type: utility
      env: prod
      net_zone: prd
      datacenter: a2
      hosts:
        a2plprdu01.cloud.iad2.gdg:
          floating_ip: 10.36.113.252
          patch_group: a
          role: [dc-utility, ceph-ops]
        a2plprdu02.cloud.iad2.gdg:
          floating_ip: 10.36.113.210
          patch_group: b
          role: [dc-utility, ceph-ops]

    a2prdsvcutil:
      type: utility
      env: prod
      net_zone: prd-svc
      datacenter: a2
      hosts:
        a2plprdsvcu01.cloud.iad2.gdg:
          floating_ip: 10.129.26.206
          patch_group: a
          role: [dc-utility, ceph-ops]
        a2plprdsvcu02.cloud.iad2.gdg:
          floating_ip: 10.129.26.199
          patch_group: b
          role: [dc-utility, ceph-ops]

    cgn1gcnmgtutil:
      type: utility
      env: prod
      net_zone: gcn-mgt
      datacenter: cgn1
      hosts:
        cgn1plgcnmgtu01.cloud.cgn1.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        cgn1plgcnmgtu02.cloud.cgn1.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    n3prdutil:
      type: utility
      env: prod
      net_zone: prd
      datacenter: n3
      hosts:
        n3plprdu01.cloud.ams3.gdg:
          floating_ip: 10.36.203.29
          patch_group: a
          role: [dc-utility, ceph-ops]
        n3plprdu02.cloud.ams3.gdg:
          floating_ip: 10.36.203.214
          patch_group: b
          role: [dc-utility, ceph-ops]

    a2coradmans:
      type: utility
      env: prod
      net_zone: cor-adm
      datacenter: a2
      hosts:
        a2plcoradmans01.cloud.iad2.gdg:
          floating_ip: 10.46.181.85
          patch_group: a
          role: [ceph-utility, ceph-ops]
        a2plcoradmans02.cloud.iad2.gdg:
          floating_ip: 10.46.180.92
          patch_group: b
          role: [ceph-utility, ceph-ops]
        a2plcorsb01.cloud.iad2.gdg:
          floating_ip: 10.46.181.130
          patch_group: a
          role: [storadm]
        a2plcorsb02.cloud.iad2.gdg:
          floating_ip: 10.46.181.137
          patch_group: b
          role: [storadm]

    p3coradmans:
      type: utility
      env: prod
      net_zone: cor-adm
      datacenter: p3
      hosts:
        p3plcoradmans01.cloud.phx3.gdg:
          floating_ip: 10.46.101.36
          patch_group: a
          role: [ceph-utility, ceph-ops]
        p3plcoradmans02.cloud.phx3.gdg:
          floating_ip: 10.46.101.37
          patch_group: b
          role: [ceph-utility, ceph-ops]
        p3plcorsb01.cloud.phx3.gdg:
          floating_ip: 10.46.101.167
          patch_group: a
          role: [storadm]
        p3plcorsb02.cloud.phx3.gdg:
          floating_ip: 10.46.101.3
          patch_group: b
          role: [storadm]

    sxb1coradmans:
      type: utility
      env: prod
      net_zone: cor-adm
      datacenter: sxb1
      hosts:
        sxbplcoradmans1.cloud.sxb1.gdg:
          floating_ip: 10.46.164.146
          patch_group: a
          role: [ceph-utility, ceph-ops]
        sxbplcoradmans2.cloud.sxb1.gdg:
          floating_ip: 10.46.164.158
          patch_group: b
          role: [ceph-utility, ceph-ops]
        sxb1plcorsb01.cloud.sxb1.gdg:
          floating_ip: 10.46.164.135
          patch_group: a
          role: [storadm]
        sxb1plcorsb02.cloud.sxb1.gdg:
          floating_ip: 10.46.164.208
          patch_group: b
          role: [storadm]

    p3corutil:
      type: utility
      env: prod
      net_zone: cor
      datacenter: p3
      hosts:
        p3plcoru01.cloud.phx3.gdg:
          floating_ip: 10.39.147.50
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plcoru02.cloud.phx3.gdg:
          floating_ip: 10.39.147.28
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3corsvcutil:
      type: utility
      env: prod
      net_zone: cor-svc
      datacenter: p3
      hosts:
        p3plcorsvcu01.cloud.phx3.gdg:
          floating_ip: 10.128.4.26
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plcorsvcu02.cloud.phx3.gdg:
          floating_ip: 10.128.5.46
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3devsvcutil:
      type: utility
      env: prod
      net_zone: dev-svc
      datacenter: p3
      hosts:
        p3pldevsvcu01.cloud.phx3.gdg:
          floating_ip: 10.129.165.51
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3pldevsvcu02.cloud.phx3.gdg:
          floating_ip: 10.129.164.136
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3gcnmahutil:
      type: utility
      env: prod
      net_zone: gcn-mah
      datacenter: p3
      hosts:
        p3plgcnmahu01.cloud.prd.phx3.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plgcnmahu02.cloud.prd.phx3.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3gcnmgtutil:
      type: utility
      env: prod
      net_zone: gcn-mgt
      datacenter: p3
      hosts:
        p3plgcnmgtu01.cloud.prd.phx3.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plgcnmgtu02.cloud.prd.phx3.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3mahutil:
      type: utility
      env: prod
      net_zone: mah
      datacenter: p3
      hosts:
        p3plmahu01.prod.phx3.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
          rack: P3SF13.16
        p3plmahu02.prod.phx3.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]
          rack: P3SF13.15

    p3mgtutil:
      type: utility
      env: prod
      net_zone: mgt
      datacenter: p3
      hosts:
        p3plmgtu01.cloud.phx3.gdg:
          floating_ip: 10.33.98.232
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plmgtu02.cloud.phx3.gdg:
          floating_ip: 10.33.99.177
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3pcisvcutil:
      type: utility
      env: prod
      net_zone: pci-svc
      datacenter: p3
      hosts:
        p3plpcisvcu01.prod.phx3.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
          rack: P3SC15.02
        p3plpcisvcu02.prod.phx3.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]
          rack: P3SC15.03

    p3pkiutil:
      type: utility
      env: prod
      net_zone: pki
      datacenter: p3
      hosts:
        p3plpkicephutil01.pki.gdg:
          role: [dc-utility, ceph-ops]
          patch_group: a
        p3plpkiu01.pki.gdg:
          role: [dc-utility, ceph-ops]
          patch_group: a
          rack: P3PB01.04
        p3plpkiu02.pki.gdg:
          role: [dc-utility, ceph-ops]
          patch_group: b
          rack: P3PB01.02

    p3prdutil:
      type: utility
      env: prod
      net_zone: prd
      datacenter: p3
      hosts:
        p3plprdu01.cloud.phx3.gdg:
          floating_ip: 10.47.15.245
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plprdu02.cloud.phx3.gdg:
          floating_ip: 10.47.12.122
          patch_group: b
          role: [dc-utility, ceph-ops]

    p3prdsvcutil:
      type: utility
      env: prod
      net_zone: prd-svc
      datacenter: p3
      hosts:
        p3plprdsvcu01.cloud.phx3.gdg:
          floating_ip: 10.129.4.27
          patch_group: a
          role: [dc-utility, ceph-ops]
        p3plprdsvcu02.cloud.phx3.gdg:
          floating_ip: 10.129.5.223
          patch_group: b
          role: [dc-utility, ceph-ops]

    sg2gcnmahutil:
      type: utility
      env: prod
      net_zone: gcn-mah
      datacenter: sg2
      hosts:
        sg2plgcnmahu01.cloud.prd.sin2.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        sg2plgcnmahu02.cloud.prd.sin2.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    sg2gcnmgtutil:
      type: utility
      env: prod
      net_zone: gcn-mgt
      datacenter: sg2
      hosts:
        sg2plgcnmgtu01.cloud.prd.sin2.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        sg2plgcnmgtu02.cloud.prd.sin2.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    sg2mahutil:
      type: utility
      env: prod
      net_zone: mah
      datacenter: sg2
      hosts:
        sg2plmahu01.prod.sin2.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
          rack: SG2SB02.20
        sg2plmahu02.prod.sin2.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]
          rack: SG2SB02.12

    sg2mgtutil:
      type: utility
      env: prod
      net_zone: mgt
      datacenter: sg2
      hosts:
        sg2plmgtu01.cloud.sin2.gdg:
          floating_ip: 10.28.251.249
          patch_group: a
          role: [dc-utility, ceph-ops]
        sg2plmgtu02.cloud.sin2.gdg:
          floating_ip: 10.28.251.11
          patch_group: b
          role: [dc-utility, ceph-ops]

    sg2prdutil:
      type: utility
      env: prod
      net_zone: prd
      datacenter: sg2
      hosts:
        sg2plprdu01.cloud.sin2.gdg:
          floating_ip: 10.37.18.194
          patch_group: a
          role: [dc-utility, ceph-ops]
        sg2plprdu02.cloud.sin2.gdg:
          floating_ip: 10.37.18.97
          patch_group: b
          role: [dc-utility, ceph-ops]

    sxb1corutil:
      type: utility
      env: prod
      net_zone: cor
      datacenter: sxb1
      hosts:
        sxb1plcoru01.cloud.sxb1.gdg:
          floating_ip: 10.46.31.119
          patch_group: a
          role: [dc-utility, ceph-ops]
        sxb1plcoru02.cloud.sxb1.gdg:
          floating_ip: 10.46.31.254
          patch_group: b
          role: [dc-utility, ceph-ops]

    sxb1gcnmahutil:
      type: utility
      env: prod
      net_zone: gcn-mah
      datacenter: sxb1
      hosts:
        sxb1plgcnmahu01.cloud.prd.sxb1.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        sxb1plgcnmahu02.cloud.prd.sxb1.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    sxb1gcnmgtutil:
      type: utility
      env: prod
      net_zone: gcn-mgt
      datacenter: sxb1
      hosts:
        sxb1plgcnmgtu01.cloud.prd.sxb1.gdg:
          patch_group: a
          role: [dc-utility, ceph-ops]
        sxb1plgcnmgtu02.cloud.prd.sxb1.gdg:
          patch_group: b
          role: [dc-utility, ceph-ops]

    sxb1mgtutil:
      type: utility
      env: prod
      net_zone: mgt
      datacenter: sxb1
      hosts:
        sxb1plmgtu01.cloud.sxb1.gdg:
          floating_ip: 10.29.7.54
          patch_group: a
          role: [dc-utility, ceph-ops]
        sxb1plmgtu02.cloud.sxb1.gdg:
          floating_ip: 10.29.7.142
          patch_group: b
          role: [dc-utility, ceph-ops]

    sxb1prdutil:
      type: utility
      env: prod
      net_zone: prd
      datacenter: sxb1
      hosts:
        sxb1plprdu01.cloud.sxb1.gdg:
          floating_ip: 10.47.54.157
          patch_group: a
          role: [dc-utility, ceph-ops]
        sxb1plprdu02.cloud.sxb1.gdg:
          floating_ip: 10.47.54.232
          patch_group: b
          role: [dc-utility, ceph-ops]

    salt:
      type: salt
      env: prod
      net_zone: mgt
      hosts:
        p3plsaltbs01.cloud.phx3.gdg:
          floating_fqdn: p3plsaltbs01.cloud.phx3.gdg
          floating_ip: 10.28.155.127
          role: [salt-bootstrap]
        p3plsaltbs02.cloud.phx3.gdg:
          floating_fqdn: p3plsaltbs02.cloud.phx3.gdg
          floating_ip: 10.28.155.235
          role: [salt-bootstrap]

        p3plsalt02.cloud.phx3.gdg:
          floating_fqdn: p3plsalt.storage.int.gdcorp.tools
          floating_ip: 10.33.89.178
          role: [salt-master, snow-clusters, ceph-ops]
        sg2plsalt02.cloud.sin2.gdg:
          floating_fqdn: sg2plsalt.storage.int.gdcorp.tools
          floating_ip: 10.30.149.185
          role: [salt-master, checks-runner, ceph-ops]

    salt-corsvc:
      type: salt
      env: prod
      net_zone: cor-svc
      hosts:
        p3plsalt01.cloud.phx3.gdg:
          floating_fqdn: p3plsalt.storage.int.gdcorp.tools
          floating_ip: 10.128.4.5
          role: [salt-master, snow-clusters, ceph-ops]
        sxb1plsalt01.cloud.sxb1.gdg:
          floating_fqdn: sxb1plsalt.storage.int.gdcorp.tools
          floating_ip: 10.128.18.178
          role: [salt-master, checks-runner, ceph-ops]

    salt-test:
      type: salt
      env: test
      net_zone: dev-svc
      hosts:
        p3tlsalt01.cloud.phx3.gdg:
          role: [salt-master, snow-clusters, ceph-ops]
        p3tlsalt02.cloud.phx3.gdg:
          role: [salt-master, ceph-ops]

    jenkins:
      type: jenkins
      env: prod
      hosts:
        p3pljenkins002.cloud.phx3.gdg:
          role: [jenkins-slave]
        p3pljenkins003.cloud.phx3.gdg:
          role: [jenkins-slave]
        p3pljenkins004.cloud.phx3.gdg:
          role: [jenkins-slave]
          floating_ip: 10.128.4.28
        p3pljenkinsa01.cloud.phx3.gdg:
          role: [jenkins-slave]
          floating_ip: 10.129.5.128

    jenkins-master:
      type: jenkins
      env: prod
      net_zone: cor-adm
      hosts:
        p3pljenkinsm01.cloud.phx3.gdg:
          floating_fqdn: p3pljenkins.storage.int.gdcorp.tools
          floating_ip: 10.46.100.199
          role: [jenkins-master]

    icinga-iad:
      type: icinga2
      env: prod
      net_zone: prd
      datacenter: a2
      hosts:
        a2plicendp001.cloud.iad2.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: a2plicendp001.storage.int.gdcorp.tools
          floating_ip: 10.37.146.185
          illumio_labels: [manual]
        a2plicendp002.cloud.iad2.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: a2plicendp002.storage.int.gdcorp.tools
          floating_ip: 10.37.146.90
          illumio_labels: [manual]

    icinga-iad-mgt:
      type: icinga2
      env: prod
      net_zone: mgt
      datacenter: a2
      hosts:
        a2plicendp003.cloud.iad2.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: a2plicendp003.storage.int.gdcorp.tools
          floating_ip: 10.28.143.254
          illumio_labels: [manual]
        a2plicendp004.cloud.iad2.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: a2plicendp004.storage.int.gdcorp.tools
          floating_ip: 10.28.143.201
          illumio_labels: [manual]

    icinga-phx:
      type: icinga2
      env: prod
      net_zone: prd
      datacenter: p3
      hosts:
        p3plicendp001.cloud.phx3.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: p3plicendp001.storage.int.gdcorp.tools
          floating_ip: 10.37.86.33
          illumio_labels: [manual]
        p3plicendp002.cloud.phx3.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: p3plicendp002.storage.int.gdcorp.tools
          floating_ip: 10.37.86.70
          illumio_labels: [manual]

    icinga-phx-mgt:
      type: icinga2
      env: prod
      net_zone: mgt
      datacenter: p3
      hosts:
        p3plicendp003.cloud.phx3.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: p3plicendp003.storage.int.gdcorp.tools
          floating_ip: 10.33.98.106
          illumio_labels: [manual]
        p3plicendp004.cloud.phx3.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: p3plicendp004.storage.int.gdcorp.tools
          floating_ip: 10.33.99.23
          illumio_labels: [manual]

    icinga-sxb:
      type: icinga2
      env: prod
      net_zone: prd
      datacenter: sxb1
      hosts:
        sxb1plicendp001.cloud.sxb1.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: sxb1plicendp001.storage.int.gdcorp.tools
          floating_ip: 10.47.54.8
          illumio_labels: [manual]
        sxb1plicendp002.cloud.sxb1.gdg:
          role: [icinga2-endpoint, ceph-ops]
          floating_fqdn: sxb1plicendp002.storage.int.gdcorp.tools
          floating_ip: 10.47.54.6
          illumio_labels: [manual]

    p3pcinetbackup:
      type: netbackup
      env: prod
      net_zone: pci-svc
      datacenter: p3
      hosts:
        p3plpcimaster01.prod.phx3.gdg:
          role: [netbackup]
          rack: P3SC15.02
        p3plpcimedia01.prod.phx3.gdg:
          role: [netbackup]
          rack: P3SC15.03

    proxy-iad:
      type: proxy
      env: prod
      net_zone: prd
      vip_ip: 10.37.130.24
      vip_fqdn: iadproxy.storage.int.gdcorp.tools
      datacenter: a2
      hosts:
        a2plprx001.cloud.iad2.gdg:
          role: [http-proxy]
          floating_ip: 10.37.146.7
          illumio_labels: [manual]
        a2plprx002.cloud.iad2.gdg:
          role: [http-proxy]
          floating_ip: 10.37.146.146
          illumio_labels: [manual]

    proxy-phx:
      type: proxy
      env: prod
      net_zone: prd
      vip_ip: 10.37.82.146
      vip_fqdn: phxproxy.storage.int.gdcorp.tools
      datacenter: p3
      hosts:
        p3plprx001.cloud.phx3.gdg:
          role: [http-proxy]
          floating_ip: 10.37.86.103
          illumio_labels: [manual]
        p3plprx002.cloud.phx3.gdg:
          role: [http-proxy]
          floating_ip: 10.37.86.26
          illumio_labels: [manual]

    proxy-phx-test:
      type: proxy
      env: test
      net_zone: prd
      vip_ip: 10.37.82.96
      vip_fqdn: phxproxy.storage.test-gdcorp.tools
      datacenter: p3
      hosts:
        p3tlprx001.cloud.phx3.gdg:
          role: [http-proxy]
          floating_ip: 10.47.15.23
          illumio_labels: [manual]
        p3tlprx002.cloud.phx3.gdg:
          role: [http-proxy]
          floating_ip: 10.47.13.56
          illumio_labels: [manual]

    proxy-sin:
      type: proxy
      env: prod
      net_zone: prd
      vip_ip: 10.37.5.2
      vip_fqdn: sinproxy.storage.int.gdcorp.tools
      datacenter: sg2
      hosts:
        sg2plprx001.cloud.sin2.gdg:
          role: [http-proxy]
          floating_ip: 10.37.18.141
          illumio_labels: [manual]
        sg2plprx002.cloud.sin2.gdg:
          role: [http-proxy]
          floating_ip: 10.37.18.34
          illumio_labels: [manual]

    proxy-sxb:
      type: proxy
      env: prod
      net_zone: prd
      vip_ip: 10.47.38.3
      vip_fqdn: sxbproxy.storage.int.gdcorp.tools
      datacenter: sxb1
      hosts:
        sxb1plprx001.cloud.sxb1.gdg:
          role: [http-proxy]
          floating_ip: 10.47.54.19
          illumio_labels: [manual]
        sxb1plprx002.cloud.sxb1.gdg:
          role: [http-proxy]
          floating_ip: 10.47.54.33
          illumio_labels: [manual]
git/storage-ps-ceph-salt - (master) > 
