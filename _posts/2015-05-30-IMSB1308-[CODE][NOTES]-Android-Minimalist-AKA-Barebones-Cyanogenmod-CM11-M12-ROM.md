---
layout: post
title: '[CODE] Android: Minimalist AKA Barebones Cyanogenmod CM11 "M12" (Android 4.4 "KitKat") ROM'
date: '2015-05-30'
author: insurgencymodscum2
tags:
- Insurgency Mod Scum
- OT-Noted
- OT-PROTIP
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-1847586326667730234
blogger_orig_url: http://insurgencymod.blogspot.com/2015/05/protip-noted-minimalist-aka-barebones.html
---

**UPDATE: WARNING: This disables encrypted wireless on my tablet. Unencrypted (public) access points work OK**.  
  
Use "Total Commander" to rename "App.apk" to "App.apk.bak". This is by far the easiest yet best method. Avoid "ES File Explorer" which is shit.  
  
/system/app  
  

> > Apollo.apk.bak
> 
> > BasicDreams.apk.bak
> 
> > Bluetooth.apk.bak
> 
> > BluetoothExt.apk.bak
> 
> > Browser.apk.bak
> 
> > CMBugReport.apk
> 
> > CMFileManager.apk.bak
> 
> > CMHome.apk
> 
> > CMWallpapers.apk
> 
> > Calculator.apk.bak
> 
> > Calendar.apk
> 
> > Camera2.apk.bak
> 
> > CertInstaller.apk
> 
> > DSPManager.apk.bak
> 
> > DeskClock.apk.bak
> 
> > Development.apk
> 
> > DocumentsUI.apk
> 
> > DownloadProviderUi.apk.bak
> 
> > Email.apk.bak
> 
> > Exchange2.apk.bak
> 
> > FaceLock.apk.bak
> 
> > Galaxy4.apk.bak
> 
> > Gallery2.apk.bak
> 
> > GenieWidget.apk.bak
> 
> > Gmail2.apk.bak
> 
> > GoogleCalendarSyncAdapter.apk
> 
> > GoogleContactsSyncAdapter.apk
> 
> > GoogleEars.apk.bak
> 
> > GoogleTTS.apk.bak
> 
> > HTMLViewer.apk.bak
> 
> > Hangouts.apk.bak
> 
> > HoloSpiralWallpaper.apk.bak
> 
> > KeyChain.apk
> 
> > LatinIME.apk
> 
> > LiveWallpapers.apk.bak
> 
> > LiveWallpapersPicker.apk.bak
> 
> > LockClock.apk.bak
> 
> > MagicSmokeWallpapers.apk.bak
> 
> > MediaUploader.apk
> 
> > NoiseField.apk
> 
> > PacProcessor.apk
> 
> > PackageInstaller.apk
> 
> > PhaseBeam.apk.bak
> 
> > PhotoPhase.apk.bak
> 
> > PhotoTable.apk.bak
> 
> > PrintSpooler.apk.bak
> 
> > SoundRecorder.apk.bak
> 
> > TelephonyProvider.apk
> 
> > Term.apk
> 
> > UserDictionaryProvider.apk
> 
> > VideoEditor.apk.bak
> 
> > VisualizationWallpapers.apk.bak
> 
> > VoicePlus.apk.bak
> 
> > WAPPushManager.apk

  
/system/priv-app  
  
NOTE: "Trebuchet" is Cyanogenmod's launcher, so make sure you are using another launcher (see: [http://insurgencymod.blogspot.com/2015/05/protip-noted-android-open-source.html](http://insurgencymod.blogspot.com/2015/05/protip-noted-android-open-source.html)) before renaming it.  

>   
> 
> > BackupRestoreConfirmation.apk
> 
> > CMAccount.apk
> 
> > CMUpdater.apk
> 
> > CalendarProvider.apk.bak
> 
> > ConfigUpdater.apk
> 
> > Contacts.apk.bak
> 
> > ContactsProvider.apk.bak
> 
> > DefaultContainerService.apk
> 
> > DownloadProvider.apk
> 
> > ExternalStorageProvider.apk
> 
> > FusedLocation.apk
> 
> > GmsCore.apk
> 
> > GoogleBackupTransport.apk
> 
> > GoogleFeedback.apk
> 
> > GoogleLoginService.apk
> 
> > GoogleOneTimeInitializer.apk
> 
> > GooglePartnerSetup.apk
> 
> > GoogleServicesFramework.apk
> 
> > InputDevices.apk
> 
> > Keyguard.apk
> 
> > MediaProvider.apk
> 
> > OneTimeInitializer.apk
> 
> > Phonesky.apk
> 
> > PicoTts.apk
> 
> > ProxyHandler.apk
> 
> > Settings.apk
> 
> > SettingsProvider.apk
> 
> > SetupWizard.apk
> 
> > SharedStorageBackup.apk
> 
> > Shell.apk
> 
> > SystemUI.apk
> 
> > TeleService.apk
> 
> > ThemeChooser.apk.bak
> 
> > ThemesProvider.apk.bak
> 
> > Trebuchet.apk.bak
> 
> > Velvet.apk.bak
> 
> > VpnDialogs.apk
> 
> > WallpaperCropper.apk
> 
> > talkback.apk

  
To get the list of your apps (like above) open up the "Terminal":  

>   
> su  
> ls /data/app >/sdcard/dataapp.txt  
> ls /system/app >/sdcard/systemapp.txt  
> ls /system/priv-app >/sdcard/systempprivapp.txt

  
More PRO TIPS:  
  
You may also want to search and delete "bootanimation" files, you don't need them.  
  
Enable "Developer Optons" ([http://wiki.cyanogenmod.org/w/Doc:\_developer\_options](http://wiki.cyanogenmod.org/w/Doc:_developer_options)):  
  

> In the Settings app, select About Phone (or About Tablet).  
> Scroll down, and tap the Build number entry seven times. On the seventh tap, you will be notified that "You are now a developer."

  
Disable annoying animations:  
  
In "Developer Options" set "... animation scale" and "... duration scale" to "0.0x"  
  
Also see:  
[http://insurgencymod.blogspot.com/2015/05/protip-noted-android-open-source.html](http://insurgencymod.blogspot.com/2015/05/protip-noted-android-open-source.html)  
[http://insurgencymod.blogspot.com/2015/05/noted-minimalist-aka-barebones.html](http://insurgencymod.blogspot.com/2015/05/noted-minimalist-aka-barebones.html)  
and  
[http://wiki.cyanogenmod.org/w/Barebones](http://wiki.cyanogenmod.org/w/Barebones)  
[http://wiki.cyanogenmod.org/w/Google_Apps](http://wiki.cyanogenmod.org/w/Google_Apps)  

---

IMSB1308_8A602F8145491273CF6D79CE708F2B80C864B519