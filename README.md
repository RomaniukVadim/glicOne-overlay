# glicOne Gentoo Overlay

An overlay for Gentoo, with various packages used and/or maintained by [glicOne](https://github.com/RomaniukVadim).

## Install

```
sudo layman -fa glicOne
sudo emerge <package>
```

Afterwards, simply run `sudo layman -S`, and sync all our ebuilds available. 
Many of our packages are available as live (`*-9999`) ebuilds, and also need manual unmasking in `/etc/portage/package.accept_keywords` before they can be emerged. 

---

*Please report issues via the GitHub tracking system! Please fork and submit pull requests! We're happy to merge!*
