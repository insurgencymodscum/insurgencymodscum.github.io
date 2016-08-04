---
layout: post
title: "[NOTED] Insurgency Mod CVARs"
date: '2011-11-27'
author: insurgencymod
tags:
- INSPROTIP
- Insurgency Mod Scum
- OT-Noted
- OT-PROTIP
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-6465251689485020382
blogger_orig_url: http://insurgencymod.blogspot.com/2011/11/insurgency-configs.html
---

Please see:

[https://github.com/insmodscum/insurgency.config/tree/master/insurgency/CFG/IMS/insmod](https://github.com/insmodscum/insurgency.config/tree/master/insurgency/CFG/IMS/insmod)

* * *

> Performance Commands  
>   
> mat_forcemanagedtextureintohardware \[0,1\] - If set to 1, attempts to force texture information into your Video RAM at the start of a level, alleviating any stuttering in the game. Note, this setting was introduced with the "stutter fix" patch (See Patches Mods & Steam section for details). If you find stuttering has increased, set this to 0 and try the other stutter fixes below.  
>   
> cl_forcepreload \[0,1\] - If set to 1 forces all information to preload, reducing loading pauses and stuttering by not loading information on the fly.  
>   
> sv_forcepreload \[0,1\] - If set to 1, forces server-side preloading, once again reducing loading pauses.  
>   
> cl\_ragdoll\_collide \[0,1\] - If set to 1, prevents characters from merging into each other due to ragdoll effects, thereby improving realism with no real performance hit.  
>   
> mat_compressedtextures \[0,1\] - If set to 1, uses compressed textures for optimal performance. For those with graphics cards which have higher amounts of Video RAM (e.g. 256MB) setting this to 0 will improve texture appearance at the cost of some performance.  
>   
> fps\_max \[fps\] - Limits the maximum possible framerate to the FPS specified. Has no impact on framerate performance (other than capping it). This is best set to your monitor's refresh rate for smoother FPS, due to less volatile fluctuations (e.g. fps\_max 85). Setting it higher does not increase overall FPS.  
>   
> mem\_force\_flush \[0,1\] - If set to 1 forces the cache to be flushed on every allocation, which is not necessarily optimal but can reduce memory-related errors.  
>   
> r_fastzreject \[-1,0,1\] - If set to 1 activates a fast z-setting algorithm which takes advantage of hardware fast z reject for improved performance. If set to -1 detects your default hardware setting for this option. Initially this should be set to 1, and if you see any problems then set to -1.  
>   
> cl_smooth \[0,1\] - If set to 1 attempts to smooth the view after prediction errors, however this can increase stuttering and so should usually be set to 0.  
>   
> cl\_smoothtime \[seconds\] - Time over which to smooth the view after prediction errors. If cl\_smooth is enabled, experiment with values to see which gives the best results.  
>   
> sv_autoladderdismount \[0,1\] - If set to 1, the player automatically dismounts from ladders when the end is reach. If disabled, the player must press the USE key to mount/dismount ladders and hence cannot accidentally jump/walk off a ladder. Set to taste as there is no performance impact.  
>   
> sv_footsteps \[0,1\] - If set to 1, player footsteps can be heard, if set to 0 no footsteps are emitted from the player. Set to taste, has no performance impact, but can affect realism.  
>   
> violence_ablood \[0,1\] - If set to 1 shows alien blood when they are hit. Disabling this can improve performance but reduce realism.  
>   
> violence_agibs \[0,1\] - If set to 1 shows alien gore when they are hit. Disabling this can improve performance but reduce realism.  
>   
> violence_hblood \[0,1\] - If set to 1 shows human blood when they are hit. Disabling this can improve performance but reduce realism.  
>   
> violence_hgibs \[0,1\] - If set to 1 shows human gore when they are hit. Disabling this can improve performance but reduce realism.  
>   
> \[Graphics\]  
>   
> cl_detaildist \[range\] - Determines the range at which detail props are shown (e.g. grass). The higher the value, the lower your performance as more add-on details are shown. Reducing this setting can increase performance, and increasing this setting will improve image quality.  
>   
> cl_detailfade \[range\] - Determines the range at which detail props fade into view. Increasing this value can raise performance.  
>   
> cl\_maxrenderable\_dist \[distance\] - Specifies the maximum distance from the camera at which things will be rendered. The smaller the number, the less will be rendered, improving performance (cheat).  
>   
> cl_ejectbrass \[0,1\] - If set to 1, weapons eject shells as they fire. If set to 0 they don't, which can improve performance especially during heavy combat.  
>   
> cl\_show\_bloodspray \[0,1\] - If set to 1, blood sprays are emitted from bullet impacts on characters. If set to 0, no blood sprays are shown, however blood marks (decals) can still appear. Disabling this can improve performance, but reduces realism.  
>   
> cl\_show\_splashes \[0,1\] - If set to 1, splashes in water are shown, if set to 0 they are disabled. Can improve performance if disabled at the cost of realism.  
>   
> crosshair \[0,1\] - If set to 1, enables the crosshair on the screen, if set to 0 disables it. The performance difference is negligible, so set to taste.  
>   
> lod_Enable \[0,1\] - If set to 1, allows the level of detail (lod) of objects to be gradually reduced the further they are from the player. This should be set to 1 for optimal performance, or 0 for maximum image quality.  
>   
> lod_TransitionDist \[range\] - The distance at which the lod is reduced on objects. The higher this range, the lower your performance but the better distant objects will appear.  
>   
> mat_bloom \[0,1\] - If set to 1, a 'bloom' lighting effect is visible on objects, softening their appearance. If set to 0 this effect is removed, but performance is increased without a noticeable drop in image quality.  
>   
> mat_bumpmap \[0,1\] - If set to 1, enables bump mapping which makes flat 2D textures appear three dimensional. If disabled, textures will be loaded without bumpmapping and will appear far less realistic, however performance will be improved.  
>   
> mat\_clipz \[0,1\] - If set to 1, uses an optimization technique to reduce what is drawn on screen for a performance improvement. Note that some Nvidia FX card owners need to set mat\_clipz 0 to fix rendering problems.  
>   
> mat_diffuse \[0,1\] - If set to 1, uses diffuse lighting on materials. If set to 0 such lighting is removed and while performance is improved the screen is almost completely black from lack of this diffuse (ambient) lighting and hence is not recommended.  
>   
> mat_drawwater \[0,1\] - If set to 1, all water is rendered. Setting this to 0 can remove water for a performance boost at the cost of realism (cheat).  
>   
> mat\_dxlevel \[dxversion\] - Determines the shader version for special effects applied to materials. Options include 70, 80, 81 and 90 (e.g. mat\_dxlevel 81). This is similar to the -dxlevel switch in the Advanced Tweaking section on page 7. Using shader versions lower than the highest level supported by your card will improve performance at the cost of varying degrees of image quality loss (depending on the shader version used).  
>   
> mat_fastnobump \[0,1\] - If set to 1, floor textures have all bump mapping removed and will appear flat and smooth. This can improve performance without affecting all bump mapping in the game, but will make floors appear unrealistic.  
>   
> mat_filterlightmaps \[0,1\] - If set to 1, static lightmaps are rendered correctly. If set to 0, all areas of pre-rendered lighting will be blocky and unrealistic, but performance will be improved slightly at the cost of realism.  
>   
> mat_filtertextures \[0,1\] - If set to 1, textures are rendered smoothly. If set to 0, textures will be blocky and unrealistic (similar to the original Doom!) but performance will be improved.  
>   
> mat_fullbright \[0,1\] - If set to 1, lights every texture will up brightly lit up (cheat).  
>   
> mat_hsv \[0,1\] - If set to 1, converts everything to black and white.  
>   
> mat_mipmaptextures \[0,1\] - If set to 0 disables mipmap textures, which harshens textures greatly but can improve performance.  
>   
> mat_showlowresimage \[0,1\] - If set to 1, loads extremely low resolution blocky textures in place of the normal ones for a significant performance boost at the cost of a great deal of realism.  
>   
> mat_softwarelighting \[0,1\] - If set to 1, uses only software-supported lighting. Image quality is not greatly affected, but this may increase or decrease your performance depending on whether your CPU is far more powerful than your graphics card.  
>   
> mat_specular \[0,1\] - If set to 1, uses specular lighting. If set to 0 materials will not have specular lighting applied to them for a performance boost but a slight drop in image quality.  
>   
> muzzleflash_light \[0,1\] - If set to 1, weapons firing will emit a light along with the muzzle flash. If set to 0, a muzzle flash is still visible but no lighting is cast from it. Performance will improve in combat scenes with no noticeable drop in realism.  
>   
> r\_decal\_cullsize \[pixels\] - Decals (marks from weapons etc.) higher than the specified size in pixels will be removed straight away. Raising this value can improve performance during heavy gunfire for example, at the cost of some realism depending on how high this value is raised.  
>   
> r_decals \[number\] - Specifies the maximum number of decals possible at any one time. The higher this number, the greater the potential for getting slowdowns during large firefights as large numbers of decals are generated. Reducing this setting can improve performance in such situations.  
>   
> r_drawdecals \[0,1\] - If set to 1, decals are drawn. If set to 0, no decals are drawn at all improving performance but greatly reducing realism (cheat).  
>   
> r_drawflecks \[0,1\] - If set to 1, small chunks of rubble and dirt will be thrown up around bullet impact points. If set to 0, these 'flecks' will be disabled, reducing realism but improving performance.  
>   
> r_drawmodeldecals \[0,1\] - If set to 1, decals can be drawn on models, which are pretty much everything excluding walls and floors. If set to 0 these decals will be disabled, improving performance during weapons fire for example, but reducing realism.  
>   
> r\_maxmodeldecal \[number\] - If r\_drawmodeldecals is enabled, this number determines the maximum number of decals which can be drawn on a model. The higher the setting the greater the performance impact when firing at models.  
>   
> r_drawparticles \[0,1\] - If disabled, particle effects - which includes smoke and explosions - will not be drawn. This can greatly improve performance around such effects at the cost of a great deal of realism.  
>   
> r_DrawRain \[0,1\] - If set to 1, rain effects will be rendered, however if disabled no rain will be drawn. This improves performance in levels where there is visible rain, however realism is greatly reduced (cheat).  
>   
> r_drawropes \[0,1\] - If set to 1, all ropes and rope-like objects (e.g. powerlines) will be drawn as normal, however disabling this setting will remove such objects, perhaps improving performance in places where they exist but reducing realism (cheat).  
>   
> r_drawskybox \[0,1\] - If set to 0, the sky textures will be completely removed, improving performance but resulting in visual anomalies in the sky and a large reduction in realism.  
>   
> r_drawtranslucentrenderables \[0,1\] - If set to 1, all objects which are translucent, such as the Combine energy shields, will be drawn. If set to 0, these objects will not be drawn, improving performance around them at the cost of realism (cheat).  
>   
> r_dynamic \[0,1\] - If set to 1, enables dynamic lighting. If set to 0, disables dynamic lighting which can boost performance without a dramatic impact on realism.  
>   
> r_farz \[-1,0,1\] - Controls the far clippling plane, which determines what is not rendered when it is determined not to be visible to the character. A value of -1 is normal, higher values can result in normally visible objects suddenly disappearing from view (cheat).  
>   
> r_lod \[-8 to 8\] - Determines the rate at which level of detail (lod) is stripped from objects as they recede away from the player. The lower the value, the more detail remains visible on objects as they progress into the distance, reducing performance but increasing image quality.  
>   
> r_maxdlights \[number\] - Determines the maximum number of dynamic lights visible on the screen. The larger this maximum, the more chance of slowdowns during scenes with multiple dynamic light sources. Reducing this value can improve performance in such situations.  
>   
> r_modellodscale \[0-1\] - This setting is not the same as the Model Detail setting under the in-game options. You can use this value to fine tune model details, with values below 1 reducing the model details, improving performance at the cost of realism.  
>   
> r_occlusion \[0,1\] - If set to 0, disables the occlusion system in the game, which can increase performance at the expense of image quality.  
>   
> r_WaterDrawReflection \[0,1\] - If set to 0, disables all reflections on top of water. This will boost performance at the cost of realism however you may experience graphical anomalies on the water.  
>   
> r_WaterDrawRefraction \[0,1\] - If set to 0, disables all refraction - that is images which appear distorted under the water. This will boost performance at the cost of realism, however you may experience some graphical anomalies on the water.  
>   
> sv\_robust\_explosions \[0,1\] - If set to 0, explosions will be less spectacular, but this may improve performance around explosions without a significant drop in realism.  
>   
> fog_enable \[0,1\] - If set to 0, will disable fog which can improve or reduce performance depending on whether your graphics card has issues with rendering fog.  
>   
> fog\_enable\_water_fog \[0,1\] - If set to 0, removes all underwater fogging which can result in a performance boost but unrealistic water appearance.  
>   
> r_waterforceexpensive \[0,1\] - If set to 1, the highest quality water will be used. If set to 0, performance may improve without a noticeable reduction in water quality.

* * *

> //mat_picmip "5" // GOOD (0 - 5) BAD // This controls overall texture detail  
> //r_rootlod "3" // GOOD (0 - 3) BAD // This controls overall game detail  
> //r_lod "5" // GOOD (-5 - 5) BAD // This controls overall model detail  
> //cl_minmodels "1" // (1 - enable, 0 - disable) Only one skin per team  
> //cl\_ragdoll\_physics_enable "0" // (1 - enable corpses, 0 - disable corpses)

  

* * *

> bind "uparrow" "demoui"

  

> bind "m" "incrementvar volume 0 1 1"  
> bind "," "incrementvar net_graph 0 3 3"  
> bind "." "incrementvar cl_showfps 0 1 1"

  

> bind "leftarrow" "incrementvar r_drawothermodels 1 2 1"

  

> bind "KP\_INS" "host\_timescale .25;echo Demo Playback Speed: 25%" // NUM PAD 0  
> bind "KP\_END" "host\_timescale .5;echo Demo Playback Speed: 50%" // NUM PAD 1  
> bind "KP\_DOWNARROW" "host\_timescale 1;echo Demo Playback Speed: 100%" // NUM PAD 2  
> bind "KP\_PGDN" "host\_timescale 2;echo Demo Playback Speed: 200%" // NUM PAD 3  
> bind "KP\_LEFTARROW" "host\_timescale 6;echo Demo Playback Speed: 600%" // NUM PAD 4

  

> // WireFrame  
> Alias "+2" "sv\_cheats 1; IncrementVAR R\_DrawOtherModels 2 2 2"  
> Alias "-2" "sv\_cheats 1; IncrementVAR R\_DrawOtherModels 1 1 1"  
> Alias "2" "sv\_cheats 1; IncrementVAR R\_DrawOtherModels 1 2 1"  
> Bind "F2" "+2"  
> Bind "2" "2"

* * *

  
Also see:  
  
Old Ins Mod stuff:  
  
[http://insurgencymod.blogspot.com/2013/03/insurgency-mod-demo-related-commands.html](http://insurgencymod.blogspot.com/2013/03/insurgency-mod-demo-related-commands.html)  
[http://insurgencymod.blogspot.com/2010/04/storing-demos_17.html](http://insurgencymod.blogspot.com/2010/04/storing-demos_17.html)  
  
New Insurgency (New World Interactive) stuff:  
  
[http://insurgencymod.blogspot.com/2014/01/noted-insurgency-nwi-cvarlist-1.html](http://insurgencymod.blogspot.com/2014/01/noted-insurgency-nwi-cvarlist-1.html)  
[http://insurgencymod.blogspot.com/2014/01/noted-insurgency-nwi-cvarlist-2.html](http://insurgencymod.blogspot.fr/2014/01/noted-insurgency-nwi-cvarlist-2.html)  
[http://insurgencymod.blogspot.com/2014/01/noted-insurgency-nwi-cvarlist-3.html](http://insurgencymod.blogspot.fr/2014/01/noted-insurgency-nwi-cvarlist-3.html)  
[http://insurgencymod.blogspot.com/2014/05/noted-insmodscum-insurgency-config.html](http://insurgencymod.blogspot.com/2014/05/noted-insmodscum-insurgency-config.html)

---

IMSIDC44E474E155405AEDBDF01129A7C70F1AEFB0C47 