.class public Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ALWAYS_VISIBLE:Ljava/lang/String; = "always_visible"

.field public static final DANCE_STUDIO_ENTER_REQ:I = 0xbba

.field public static final FINE_LOCATION_REQ:I = 0xbb9

.field public static final MAIN_ACTION:Ljava/lang/String; = "intent.action.redmagickyi.main"

.field public static final NUBIA_ACCT_LOGIN_REQ:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "RedmagicKyiActivity"

.field public static final WALLPAPER_HUB_ENTER_REQ:I = 0xbbb


# instance fields
.field private final NUBIA_ACCT_LOGIN_RES_OK:I

.field private isInExitAnimating:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAppName:Ljava/lang/String;

.field private mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

.field private mFragMgr:Landroidx/fragment/app/FragmentManager;

.field private mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

.field private mFragmentTag:Ljava/lang/String;

.field private mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 84
    const-string v0, "gamespace"

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mAppName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->NUBIA_ACCT_LOGIN_RES_OK:I

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isInExitAnimating:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->reqAddLauncherShortcut(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isInExitAnimating:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private checkGpsIsOpen()Z
    .locals 1

    .line 585
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 586
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    return p0
.end method

.method private openGps()Z
    .locals 4

    .line 590
    sget-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->onceRequestGpsPermission:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 591
    sput-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->onceRequestGpsPermission:Z

    .line 593
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 594
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method private parseBG(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/BundleResourceManager;->resetBackground()V

    .line 778
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 779
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/16 p1, 0xbb8

    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    .line 780
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 781
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 782
    const-string v5, "msgID"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "RedmagicKyiActivity"

    if-eqz v5, :cond_0

    .line 783
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 784
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "parseBG: msgID "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    :cond_0
    const-string v5, "data"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 786
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 787
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 788
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 789
    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 790
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 791
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 792
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseBG name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 794
    :cond_1
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 795
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseBG id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 797
    :cond_2
    const-string v5, "bgType"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 798
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseBG bgType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 801
    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    .line 806
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

    invoke-virtual {v4, p1, v1}, Lcn/nubia/redmagickyi/database/BundleResourceManager;->insertBackground(ILjava/lang/String;)V

    .line 808
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_1

    .line 810
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 811
    :cond_7
    const-string v5, "total"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 812
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 813
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "parseBG: total "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 815
    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 818
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 821
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/BundleResourceManager;->queryAllBackgrounds()Ljava/util/List;

    move-result-object p1

    .line 822
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->isNeedToRestoreGamespaceBackgroundSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 824
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->setGameSpaceBgId(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 826
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    :cond_a
    :goto_3
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getGameSpaceBgId(Landroid/content/Context;)I

    move-result v0

    move v1, v2

    .line 831
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 832
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    .line 833
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v4

    if-ne v4, v0, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_d

    .line 839
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    .line 841
    :cond_d
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;-><init>()V

    const/16 v0, 0x3e9

    .line 842
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setMsgID(I)V

    .line 843
    const-string v0, "gamespace"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setSceneName(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setBgID(I)V

    .line 845
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 848
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    instance-of p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    if-eqz p1, :cond_e

    .line 849
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onBackgroundReady()V

    :cond_e
    return-void
.end method

.method private parseMessageFromUnity(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    .line 490
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 491
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const/16 v2, 0x3e7

    const-string v3, ""

    .line 492
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    const-string v5, "RedmagicKyiActivity"

    if-eqz v4, :cond_3

    .line 493
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 494
    const-string v6, "msgID"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 496
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;->setMsgID(I)V

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "parseMessageFromUnity: msgID "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_0
    const-string v6, "sceneName"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 499
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseMessageFromUnity: sceneName "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :cond_1
    const-string v6, "path"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "parseMessageFromUnity: path "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    const/16 v0, 0x3ef

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eq v2, v0, :cond_c

    const/16 v0, 0x7d3

    if-eq v2, v0, :cond_b

    const/16 v0, 0x7d7

    if-eq v2, v0, :cond_6

    const/16 v0, 0x7d0

    if-eq v2, v0, :cond_5

    const/16 v0, 0x7d1

    if-eq v2, v0, :cond_4

    goto/16 :goto_4

    .line 548
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->parseTouchMotion(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 513
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "unity_bgm_volume"

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 514
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "unity_audio_volume"

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 515
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->adjustVolume(FF)V

    .line 518
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getMuteMode(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getMuteMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    .line 521
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 p1, 0x3f2

    .line 522
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 523
    const-string p1, "gamespace"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 524
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    goto/16 :goto_4

    .line 552
    :cond_6
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkinWithEnterAnim()Z

    .line 554
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 556
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getFocalLen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/Utils;->setFocalLen(Landroid/content/Context;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->visibleRelatedView()V

    .line 558
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->showFragment()V

    .line 561
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->checkTodayFirstUse(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-boolean p1, Lcn/nubia/redmagickyi/util/Utils;->needPlayWeatherMotion:Z

    if-eqz p1, :cond_a

    .line 562
    :cond_7
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 563
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->hasFineLocationPermission(Landroid/app/Activity;)Z

    move-result p1

    .line 564
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->checkGpsIsOpen()Z

    move-result v0

    if-eqz p1, :cond_9

    if-nez v0, :cond_8

    goto :goto_1

    .line 569
    :cond_8
    sput-boolean v4, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    .line 570
    sput-boolean v1, Lcn/nubia/redmagickyi/util/Utils;->needPlayWeatherMotion:Z

    .line 571
    const-string p1, "parseMessageFromUnity: need play weather motion"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 567
    :cond_9
    :goto_1
    invoke-direct {p0, p0, p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->reqFineLocationPermission(Landroid/content/Context;ZZ)V

    goto :goto_3

    .line 576
    :cond_a
    :goto_2
    invoke-direct {p0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->reqAddLauncherShortcut(Landroid/content/Context;)V

    .line 578
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onModelLoadFinish()V

    goto :goto_4

    .line 545
    :cond_b
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->parseBG(Ljava/lang/String;)V

    goto :goto_4

    .line 527
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v4

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_4
    return-void
.end method

.method private parseTouchMotion(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 654
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 655
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    const-string/jumbo v1, "xiong_001"

    const-wide/16 v2, 0x0

    move v4, p1

    move v7, v4

    move-wide v5, v2

    .line 656
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    const-string v9, "RedmagicKyiActivity"

    if-eqz v8, :cond_5

    .line 657
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 658
    const-string v10, "touchMotionId"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 659
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 660
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "parseTouchMotion: touchMotionId "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    :cond_0
    const-string v10, "soundId"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 662
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    .line 663
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseTouchMotion: touchSoundId "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_1
    const-string v10, "partName"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 665
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 666
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "parseTouchMotion: partName "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_2
    const-string v10, "friendValue"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 668
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    .line 669
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "parseTouchMotion: friendValue "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 670
    :cond_3
    const-string v10, "length"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 671
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    .line 672
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "parseTouchMotion: length "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 674
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 677
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 678
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz v0, :cond_6

    .line 679
    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onMotionComing(I)V

    .line 681
    :cond_6
    sget-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    if-nez v0, :cond_d

    cmpl-double v0, v5, v2

    if-lez v0, :cond_d

    .line 683
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->sendMotionTrack(Ljava/lang/String;)V

    .line 685
    const-string v0, "dai_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "emo_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "nao_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    .line 690
    :cond_7
    const-string v0, "tou_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parseTouchMotion: touching head "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string p1, "tou_003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result p1

    if-nez p1, :cond_b

    .line 695
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->isMasterBundleVersionV123()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x3ec

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 697
    const-string p0, "Swim skin and Master and Bundle-version equal to or less than 1.2.3"

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 701
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isInExitAnimating:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parseTouchMotion: touching head 3 times,  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance p1, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;-><init>(Landroid/content/Context;)V

    .line 705
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->is2D(I)Z

    move-result v0

    .line 706
    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;ZLcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)V

    invoke-static {v2}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    goto :goto_1

    .line 755
    :cond_9
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->getData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 756
    sget-object v2, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->isValueAvailable(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 758
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parseTouchMotion: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " + touchPartName"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_b
    :goto_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->isBundleUpgrading(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isAppVersionUpgrading(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 764
    invoke-virtual {p0, v1, v7}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->changeFriendValue(Ljava/lang/String;I)V

    goto :goto_3

    .line 687
    :cond_c
    :goto_2
    const-string p0, "parseTouchMotion: should not display friendvalue"

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    return-void
.end method

.method private reqAddLauncherShortcut(Landroid/content/Context;)V
    .locals 3

    .line 629
    new-instance v0, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;-><init>()V

    .line 630
    sget-object v1, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->checkEnableShortcut(Lcn/nubia/redmagickyi/shortcut/util/Shortcut;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;

    invoke-direct {v1, p0, v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reqFineLocationPermission(Landroid/content/Context;ZZ)V
    .locals 1

    .line 604
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;ZZLandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMotionTrack(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 855
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 857
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "xiong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "shou"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "tui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "tou"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "fu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_2

    .line 863
    :pswitch_0
    const-string p1, "mora_touch_xiong"

    goto :goto_2

    .line 869
    :pswitch_1
    const-string p1, "mora_touch_shou"

    goto :goto_2

    .line 872
    :pswitch_2
    const-string p1, "mora_touch_tui"

    goto :goto_2

    .line 860
    :pswitch_3
    const-string p1, "mora_touch_tou"

    goto :goto_2

    .line 866
    :pswitch_4
    const-string p1, "mora_touch_fu"

    :goto_2
    if-eqz p1, :cond_5

    .line 877
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mora_app_touch"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, p0, v1, p1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0xccf -> :sswitch_4
        0x1c15a -> :sswitch_3
        0x1c208 -> :sswitch_2
        0x35dafb -> :sswitch_1
        0x6cc6dd7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFragment()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 424
    :cond_0
    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    .line 425
    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->in_alpha:I

    sget v2, Lcn/nubia/redmagickyi/main/R$anim;->out_alpha:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 426
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_base:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 427
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 428
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onSceneLoadFinish()V

    return-void
.end method

.method private visibleRelatedView()V
    .locals 1

    .line 432
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->parseMessageFromUnity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changeFriendValue(Ljava/lang/String;I)V
    .locals 1

    .line 447
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 385
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyEvent, isFinishing = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RedmagicKyiActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 392
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 394
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 325
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 328
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 2

    .line 409
    const-string v0, "performFinish begin"

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 411
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->saveExitTime(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 412
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->moveTaskToBack(Z)Z

    .line 413
    const-string v0, "performFinish end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->finishAffinity()V

    .line 416
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public getFragmentManager(Z)Landroidx/fragment/app/FragmentManager;
    .locals 0

    if-eqz p1, :cond_0

    .line 462
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    return-object p0

    .line 464
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0

    .line 467
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public isForeground()Z
    .locals 0

    .line 473
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 311
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, ":"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "RedmagicKyiActivity"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xbb8

    if-ne p1, p0, :cond_1

    if-nez p2, :cond_1

    .line 315
    const-string p0, "onActivityResult: login success"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onBackPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    const-string v0, "RedmagicKyiActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 367
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz p0, :cond_1

    .line 368
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 103
    const-string v0, "onCreate"

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->requestWindowFeature(I)Z

    .line 105
    const-string v2, "gamespace"

    sput-object v2, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    .line 106
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isInMultiWindowMode()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    const-string p1, "com.android.systemui"

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "dock_non_resizeble_failed_to_dock_text"

    const-string v5, "string"

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    const-string v3, "NameNotfoundException"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->finish()V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "unity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->app_base:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->setContentView(I)V

    .line 126
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 129
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->initApplicationData(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_2

    .line 131
    sput-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->needPlayWeatherMotion:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 134
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->clearLocalBundle(Landroid/content/Context;)V

    .line 136
    :cond_1
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/Utils;->setAppVersionUpgrading(Landroid/content/Context;Z)V

    .line 137
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->clearBundleUpgrade(Landroid/content/Context;)V

    .line 141
    :cond_2
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->mergeBundleResource(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result p1

    if-nez p1, :cond_3

    .line 144
    invoke-static {}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->self()Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->init(Landroid/content/Context;)V

    .line 145
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/user/account/Account;->reStoreAccountInfo(Landroid/content/Context;)V

    .line 148
    :cond_3
    invoke-static {v2}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->setEnableAudioPlayWhenScreenLocked(Z)V

    .line 149
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez p1, :cond_4

    .line 150
    new-instance p1, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {p1, p0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    sput-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 152
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-nez p1, :cond_5

    .line 153
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 154
    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setAutoConfirmConfigurationChanged(Z)V

    .line 155
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 179
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->requestFocus()Z

    .line 183
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    .line 184
    new-instance p1, Lcn/nubia/redmagickyi/database/BundleResourceManager;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/database/BundleResourceManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 212
    const-string v0, "onDestroy begin"

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_0

    .line 216
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->destroy(Lcom/unity3d/player/UnityPlayer;)V

    .line 218
    :goto_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 219
    const-string p0, "onDestroy end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 345
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 346
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method public onMotionListChanged()V
    .locals 0

    .line 884
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onMotionListChanged()V

    .line 885
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz p0, :cond_0

    .line 886
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onMotionListChanged()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 198
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 199
    const-string v0, "RedmagicKyiActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->setIntent(Landroid/content/Intent;)V

    .line 205
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->checkOrientation()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 231
    const-string v0, "onPause begin"

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 233
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->saveExitTime(Landroid/content/Context;)V

    .line 234
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 235
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 236
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 238
    :cond_0
    const-string p0, "onPause end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 292
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    const/16 p0, 0xbb9

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    .line 296
    aget p0, p3, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 299
    sput-boolean p0, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 269
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRestart()V

    .line 270
    const-string p0, "RedmagicKyiActivity"

    const-string v0, "onRestart"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 244
    const-string v0, "onResume begin"

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 246
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 248
    sput-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    .line 249
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->hasFineLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->checkGpsIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->playWeatherMotion()V

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->openGps()Z

    move-result p0

    sput-boolean p0, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    .line 257
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 258
    const-string p0, "onResume end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 275
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 263
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStart()V

    .line 264
    const-string p0, "RedmagicKyiActivity"

    const-string v0, "onStart"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop, isFinishing = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RedmagicKyiActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 333
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isInExitAnimating:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 336
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-ne p1, p0, :cond_1

    .line 337
    sget-boolean p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 352
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    const/16 p0, 0xf

    if-ne p1, p0, :cond_0

    .line 355
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 375
    const-string v0, "onWindowFocusChanged begin"

    const-string v1, "RedmagicKyiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 377
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 378
    const-string p0, "onWindowFocusChanged end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
