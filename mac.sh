#!/bin/sh

set -e

return_code=0

# shellcheck source=lib/utils.sh
source "$(dirname "$(dirname "$0")")/lib/utils.sh"

required 1Password '/Applications/1Password 6.app/' https://1password.com/
required Arq '/Applications/Arq.app/' https://www.arqbackup.com/
required ClamXAV '/Applications/ClamXAV.app' https://www.clamxav.com/
required Docker 'docker' https://www.docker.com/docker-mac
required Dropbox '/Applications/Dropbox.app/' https://www.dropbox.com
required Homebrew 'brew' https://brew.sh/
required Git 'git' https://git-scm.com/
required Slack '/Applications/Slack.app/' https://slack.com/downloads/osx
required Xcode 'xcode-select' https://developer.apple.com/xcode/downloads/

optional ASDF 'asdf' https://github.com/asdf-vm/asdf
optional Bartender '/Applications/Bartender 3.app/' https://www.macbartender.com/
optional Caffeine '/Applications/Caffeine.app/' http://lightheadsw.com/caffeine/
optional Couleurs '/Applications/Couleurs.app/' https://couleursapp.com/
optional Flux '/Applications/Flux.app/' https://justgetflux.com/
optional Harvest '/Applications/Harvest.app/' https://www.getharvest.com/mac-time-tracking
optional Insomnia '/Applications/Insomnia.app/' https://insomnia.rest/
optional Mailplane '/Applications/Mailplane 3.app/' https://mailplaneapp.com/
optional Moom '/Applications/Moom.app/' https://manytricks.com/moom/
optional Paste '/Applications/Paste.app/'  https://pasteapp.me/
optional SourceTree '/Applications/SourceTree.app/' https://www.sourcetreeapp.com/
optional TunnelBear '/Applications/TunnelBear.app/' https://www.tunnelbear.com/
optional 'Visual Studio Code' '/Applications/Visual Studio Code.app/' https://code.visualstudio.com/

exit $return_code
