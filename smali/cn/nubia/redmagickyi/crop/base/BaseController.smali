.class public abstract Lcn/nubia/redmagickyi/crop/base/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;,
        Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;
    }
.end annotation


# instance fields
.field private final mAudioBecomingNoisyReceiver:Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;

.field private mAudioFocus:Lcn/nubia/redmagickyi/crop/AudioFocus;

.field protected mContext:Landroid/content/Context;

.field protected mIsPrepared:Z

.field protected mUri:Landroid/net/Uri;

.field protected mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

.field protected mbPress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mbPress:Z

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->setAudioFocus()V

    .line 39
    new-instance p1, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;-><init>(Lcn/nubia/redmagickyi/crop/base/BaseController;Lcn/nubia/redmagickyi/crop/base/BaseController$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mAudioBecomingNoisyReceiver:Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;

    .line 40
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->register()V

    return-void
.end method

.method private setAudioFocus()V
    .locals 3

    .line 55
    new-instance v0, Lcn/nubia/redmagickyi/crop/AudioFocus;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/redmagickyi/crop/base/BaseController$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/crop/base/BaseController$1;-><init>(Lcn/nubia/redmagickyi/crop/base/BaseController;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/crop/AudioFocus;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mAudioFocus:Lcn/nubia/redmagickyi/crop/AudioFocus;

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public abstract getBaseView()Lcn/nubia/redmagickyi/crop/base/BaseView;
.end method

.method public abstract isLock()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public onPause()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public registAudioFocus()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mAudioFocus:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AudioFocus;->registAudioFocus()V

    return-void
.end method

.method public relayout()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mAudioBecomingNoisyReceiver:Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->unregister()V

    :cond_0
    return-void
.end method

.method public abstract show()V
.end method

.method public unregistAudioFocus()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mAudioFocus:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AudioFocus;->unregistAudioFocus()V

    return-void
.end method
