# macOS Setting Guide

You can find more configuration and apply them manually. These section states
only changed areas.

- `>` Thie means sub-section
- [x] This means 'active'
- [ ] This means 'disable'

## Top menu > Battery Icon

- [x] Show percentage

## System Preferences.app > Dock

- [x] Minimize windows into application icon
- [x] Automatically hide and show the Dock
- [ ] Show recent applications in Dock

## System Preferences.app > Mission Control

- [ ] Automatically rearrange Spaces based on most recent use

## System Preferences.app > Internet Accounts

- Activate the accounts

## System Preferences.app > Touch ID

- Add more fingers (Add at least one finger from each hand)

## System Preferences.app > Software Update

- [x] Automatically keep my Mac up to date

## System Preferences.app > Network > Wifi > Advanced... > DNS

- 1.1.1.1
- 1.0.0.1
- 8.8.8.8
- 8.8.4.4
- 192.168.1.1

## System Preferences.app > Bluetooth

- [x] Show Bluetooth is menu bar

## System Preferences.app > Keyboard > Keyboard

- Key Repeat: Fast
- Delay Until Repeat: Short

## System Preferences.app > Keyboard > Text

- Remove all replacements
- [ ] Add period with double-space

## System Preferences.app > Keyboard > Dictation

- Dictation: On
- Language > Add language => Turkey | Turkish

## System Preferences.app > Trackpad > Point & Click

- Tracking speed: Fast

## System Preferences.app > Date & Time > Clock

- [x] Show date

## Time Machine.app

- Activate the Time Machine

## Finder.app > General

- [x] Connected Servers

## Finder.app > Sidebar

Favorites:

- [x] AirDrop
- [x] Recents
- [x] Applications
- [x] Desktop
- [x] Downloads
- [x] User Home
- [x] Projects `mkdir -p ~/Projects`

## Finder.app > Advanced

- [x] Show all filename extensions
- [x] Keep folder on top: In windows when sorting by name
- When performing a search: Search The Current Folder

## Safari.app > General

- [ ] Open "safe" files after downloading

## Safari.app > Websites > Notification

- [ ] Allow websites ask for permission to send push notifications

## Safari.app > Advanced

- [x] Show full web address
- Default Encoding: Unicode (UTF-8)
- [x] Show Develop menu in menu bar

## Mail.app > Composing

- Send new messages from: your_default@email.com

## Photos.app > View

- Show Face Names
- Show Hidden Photo Albums

## Text Edit.app > New Document

- Format: Plain text

## Dictionary.app

Drag reference sources into the order your prefer:

- English - Türkçe
- Türkçe - English
- New Oxford American Dictionary ( IPA )
- Oxford American Writer's Thesaurus
- Wikipedia (English, Türkçe)
- Apple Dictionary

## Music.app > Restrictions

- [ ] Music with explicit content

## Contact.app

- Sort By: First Name

## Messages.app > iMessage

- [x] Enable Messages in iCloud

## Calender.app > General

- Default Calender: Default

## Maps.app

- [x] Show Labels
- [x] Show Air Quality Index
- [x] Show Weather Conditions
- [x] Show Traffic
- [x] Show 3D Map

## Keynotes.app

- Remote > [x] Enable

## Voice Memos.app

- Audio Quality: Lossless

## Chess.app

- [ ] Speak Computer moves

## AppCleaner.app

- Smart Delete **ON**
- Updates: [x] Check updates automatically

## Transmit.app

- Enter Serial
- Default FTP Client: Transmit.app

## Transmit.app > View

- [x] Show Hidden Files
- [x] Show Item Count
- [x] Show Activity Bar

## Postman.app

- Sign in
- Themes: Dark theme

## ImageOptim.app > Optimization Speed

- Optimization Level > Insane

## Remove All Apps From The Dock In MacOS

```sh
defaults write com.apple.dock persistent-apps -array && killall Dock &> /dev/null
```

## DOCK ITEMS

|APPLICATION                | ASSIGN TO    |
|---------------------------|--------------|
| Finder                    | None         |
| Mail                      | Desktop 1    |
| Reminder                  | Desktop 1    |
| Notes                     | Desktop 1    |
| Safari                    | Desktop 1    |
| Terminal                  | All Desktops |
| Visual Studio Code        | Desktop 2    |
| Firefox Developer Edition | None         |
