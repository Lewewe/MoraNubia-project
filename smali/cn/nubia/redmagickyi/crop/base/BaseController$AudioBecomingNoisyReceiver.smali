.class Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/base/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/crop/base/BaseController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/crop/base/BaseController;Lcn/nubia/redmagickyi/crop/base/BaseController$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;-><init>(Lcn/nubia/redmagickyi/crop/base/BaseController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    instance-of p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/base/BaseController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/base/BaseController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setPauseState(Z)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
