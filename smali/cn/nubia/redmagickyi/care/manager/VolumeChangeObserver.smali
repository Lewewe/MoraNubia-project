.class public Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;
.super Ljava/lang/Object;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;,
        Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mVolumeBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;

.field private mVolumeChangeListener:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mRegistered:Z

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mContext:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentMusicVolume()I
    .locals 1

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMaxMusicVolume()I
    .locals 1

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public getVolumeChangeListener()Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mVolumeChangeListener:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;

    return-object p0
.end method

.method public registerReceiver()V
    .locals 4

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;-><init>(Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mRegistered:Z

    return-void
.end method

.method public setVolumeChangeListener(Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mVolumeChangeListener:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mVolumeChangeListener:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
