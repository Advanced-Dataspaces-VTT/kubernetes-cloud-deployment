package config

#
# Map tenant name to RSA 256 public key.
#
tenant_rsa256 := {

  "vtt": vtt_pub_key

}

#
# RSA 256 CLOUD realm key in Keycloak.
#
cloud_realm_key := `-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqM88PI71ThQgHbXSJ0tp
SpkgzD8+/5nKaWer0Q9mlR21eDYE/c4esH0DzGlVUxVv4BUUhLz66YB/oGzTKTnW
GMXfk1eAWF8zfyOYM/3C2OZAYu/bSaaUyTtn/TjVrXkefuanmKmVId93aNTceVeU
mZJ1x9ihY4IsbOJebxv0Zsjvh6xsDU90Ck4ohxPbon5T9e6R37tM6wm9rD6TcOke
YYeP4z4mVfamagp4ZPJC0Y4hdbAB92gDM4+EP31yvFxhyiq3ElR+3O6AIMGMTh1C
fbJNuRaf/MfnYRxMpPc8WKH8cCHNSXgA5Ikvx+Yi3fEGF8Xa3h1H0NX48UVf79sF
wwIDAQAB
-----END PUBLIC KEY-----`

#
# VTT tenant's RSA 256 public key.
# Ideally each tenant should have its own Keycloak realm, but since
# this is still platform early days, we're going to identify tenants
# with users in the VTT Cloud realm to reduce management overhead.
#
vtt_pub_key := cloud_realm_key
