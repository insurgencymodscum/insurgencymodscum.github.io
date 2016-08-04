---
layout: post
title: '[NOTED] GPG (PGP): Export Secret & Public Keys (Windows) & Minimize/Clean Keys'
date: 2015-10-07
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSTOOLS
- IMSTOOLSGPGPGP
- IMSNOTED
- 2015
---


```
gpg --armor --export-secret-keys > allsec.asc
gpg --armor --export-secret-keys ID > specificsec.asc

gpg --armor --export > allpub.asc
gpg --armor --export ID > specificpub.asc
```

---

```
https://gpgtools.tenderapp.com/discussions/problems/10622-help-for-gpg-keychain-access-menu-items-clean-up-and-minimize

Minimize: Make the key as small as possible. This removes all signatures from each user ID except for the most recent self-signature.

Clean: Compact (by removing all signatures except the selfsig) any user ID that is no longer usable (e.g. revoked, or expired). Then, remove any signatures that are not usable by the trust calculations. Specifically, this removes any signature that does not validate, any signature that is superseded by a later signature, revoked signatures, and signatures issued by keys that are not present on the keyring.
```

<br>

IMSID9C0CBD3EF78EC32DCC5F30901846AA20231F6197