.class Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeBroadcastReceiver"
.end annotation


# instance fields
.field private mObserverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 97
    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->getVolumeChangeListener()Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result p1

    .line 103
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;->onVolumeChanged(I)V

    .line 107
    :cond_0
    const-string p1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 110
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->getVolumeChangeListener()Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 116
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;->onRingModeChanged(I)V

    :cond_1
    return-void
.end method
