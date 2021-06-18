
![Latest Release](https://img.shields.io/github/v/release/GwendolyneFreddy/Silver_Star_NPC?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/GwendolyneFreddy/Silver_Star_NPC?color=gold)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macOS%20%7C%20linux%20%7C%20Project%20Infinity&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20German%20%7C%20Russian&color=limegreen)

![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BGII%20%7C%20BGT%20%7C%20BG2%3AEE%20%7C%20EET&color=dodgerblue)


<div align="center"><h1></a>Silver Star NPC (WIP)</h1>

<h3>A Spellhold Studios mod for Baldur's Gate II: SoA and ToB (classical and EE games),<br>
Baldur's Gate Trilogy and EET<h3>

</div><br>


## 

[![Created Badge](https://badges.pufler.dev/created/GwendolyneFreddy/Silver_Star_NPC?style=plastic)](https://badges.pufler.dev)
![GitHub repo size](https://img.shields.io/github/repo-size/GwendolyneFreddy/Silver_Star_NPC?style=plastic)
[![Visits Badge](https://badges.pufler.dev/visits/GwendolyneFreddy/Silver_Star_NPC?color=cyan&style=plastic)](https://badges.pufler.dev) 
![Maintenance](https://img.shields.io/static/v1?label=maintained%3F&message=yes&color=greenlight&style=plastic)
![GitHub contributors](https://img.shields.io/github/contributors/GwendolyneFreddy/Silver_Star_NPC?color=blueviolet&style=plastic) [![Contributors Display](https://badges.pufler.dev/contributors/GwendolyneFreddy/Silver_Star_NPC?size=30&padding=5&bots=true)](https://badges.pufler.dev)

## 


## 

<div align="center">
<a href="#intro">Overview</a> &#8226; <a href="#compat">Compatibility</a> &#8226; <a href="#installation">Installation</a> &#8226; <a href="#details">Details</a> &#8226; <a href="#components">Components</a> <a href="#credits">Credits and Acknowledgements</a> &#8226; <a href="#versions">Version History</a></br>
</div>

<hr>


## <a name="intro" id="intro"></a>Overview

This evil elven assassin has crude and cruel dialogues. She has banters with NPCs from SoA, but not from ToB. She first appears in Irenicus' Dungeon.


<hr>


## <a name="compat" id="compat"></a>Compatibility


<hr>


## <a name="installation" id="installation"></a>Installation

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="details" id="details"></a>Details


<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="components" id="components"></a>Components

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="faq" id="faq"></a>Frequently Asked Questions

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="versions" id="versions"></a>Version History

I also added EE-EET compatibility to the Silver Star mod (last official release was 1.93) and added other fixes.

I know that there is already an unofficial version from a Roxanne(Paula), but I checked it and a lot was not done there (sound, journal entry, etc. did not adapt, and instead of adapting portraits, some other portrait was added in general very different from the original, etc.).

And even earlier, lines in the tp2 file were not tra-fied in the mod. I fixed that too (but requires translation of the new five lines in the German version as long as they remain in English)

Here is the result of the work (v.2.0): https://www.dropbox....r-v2.0.rar?dl=0

The last time this mod (v.1.93) was uploaded here: http://www.shsforums...od-from-seifer/

Considering that the official version of the mod is almost nowhere to be found, the original author's site does not work and the mod is practically lost, could you post the mod to SHS to fix this? It seems there was a "Mod Resurrections" section here.


Here is the changelog:
- added full compatibility with EE and EET versions of the game (items, etc.)
- added command LAF HANDLE_AUDIO to install a sound file
- added iconv transcoder
- added Gwendolyne's function to automatically adapt item descriptions depending on the version of the game

##### Version 2.0.0 &nbsp;(June 18, 2021)

- Added *star.ini* metadata file (including dynamic install order syntax and global `LABELS`) to support AL|EN's "Project Infinity".
- Moved *star.tp2* into mod top folder to support AL|EN's "Project Infinity".
- Replaced `AUTHOR` keyword with `SUPPORT`.
- Added `VERSION` keyword.
- Replaced deprecated `AT_INTERACTIVE_EXIT` command with `README` keyword.
- Added `REQUIRE_PREDICATE` condition to avoid installing the mod in inaccurate games.
- Externalized tp2 code into *main_component.tpa* library for more comfortable readability and maintenance.
- Commented code as much as possible.
- Added native EE and EET compatibility:
    - Added WeiDU's built-in `HANDLE_CHARSETS` function to convert string entries for EE games.
    - Added `ADD_JOURNAL` entries.
    - Provided NPC portraits for EE games.
    - `ADD_KIT` process: fixed lower kit strref added WeiDU `fl#add_kit_ee` function for EE games.
- *fhlseb.baf*: Fixed wrong Gavin romance active variable (set to *`B!GavRA`*, was *`B!GavinRomanceActive`*).
- Moved extended scripts into new :file_folder: *scriptsext* to avoid compiling useless baf files.
- Included all BWP Fixpack fixes:
    - Patched "*shape.cre*" instead of overwriting it to solve the <a href="http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/page-14#entry566376">micbaldur Silverstar NPC - Frennedan NPC compatibility issue</a>.
    - Completed dialogues traification, and added the <a href="http://www.shsforums.net/topic/13501-updated-silverstar-released/page-2?p=533395#entry533395">Escaped clone Silver Star dialog bug fix by Lollorian</a>.
    - Added a more robust workaround than <a href="https://www.gibberlings3.net/forums/topic/21964-add_kit-and-tobex/?do=findComment&comment=183270">BWP Fixpack cmorgan's ToBEx compatible ADD_KIT fix</a> to fix Sebastian creature file installation issue with classic games if TobEx is not installed and more than 256 kits are installed. I know, pretty rare case, but who knows... :wink:
- Updated *setup.tra* file for compatibility with `GW_UPDATE_ITM_DESCRIPTION_TO_EE` WeiDU function requirements which automatically removes items usability restrictions for EE games.
- Proofread strrefs (Gwendolyne).
- Proofread Russian translation (Austin).
- Fully TRAified the mod (some lines were not traified in tp2 file).
- Updated deprecated modding tools links.
- Re-formated, updated, renamed readme file to *star-readme-english.html*, then moved it into new :file_folder: "*readme*" folder.
- Removed useless :file_folder: "*backup*" folder.
- Lower cased files.
- Included Linux and macOS versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v247.
- Uploaded mod to official Spellhold Studios GitHub mirror account.

## 

##### Version Beta 1.9.3 &nbsp;(April 11, 2012)

- Added German translation.
- Added Russian translation (by prowler).
- Updated WeiDU installer to v231.

## 

##### Version Beta 1.9.2 &nbsp;(November 3, 2004)

- More bugs fixed, including the HD and SS banter (Thanks Diana and JC).
- Added Cameo appearances of most of the staff (Thanks Diana).
- Added The Banshee component, as well as the evil points counter (Thanks Diana).
- Added more banters, interjections and material (Thanks Dancer Fitz and Diana).
- Added dream sequences and music (Thanks Diana). Music formatting may be altered however.

## 

##### Version Beta 1.1.7 &nbsp;(Unknown)

- Initial release.
<div align="right"><a href="#top">Back to top</a></div>
