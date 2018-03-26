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

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Vadim Romaniuk** - *Initial work* - [glicOne](https://github.com/RomaniukVadim)

See also the list of [contributors](https://github.com/RomaniukVadim/glicOne-overlay/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
