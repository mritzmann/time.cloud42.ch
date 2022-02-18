# time.cloud42.ch

Public Network Time Security (NTS) Service.
Like NTP, but with TLS encryption.

- 🧑‍🎓 [What is NTS?](https://netfuture.ch/2022/01/nts-network-time-security/)
- 📚 [RFC 8915](https://datatracker.ietf.org/doc/html/rfc8915)
- ⚙️ [Chrony: NTS Compatible NTP Server and Client](https://chrony.tuxfamily.org/)

## Address

IPv4 and IPv6:

```
time.cloud42.ch
```

* NTS: 4460/tcp (nts default port)
* NTP: Disabled

## Client Configuration

```
server time.cloud42.ch iburst nts
```

## Server Sonfiguration

The service is currently running at [fly.io](https://fly.io/).

```shell
fly deploy
```