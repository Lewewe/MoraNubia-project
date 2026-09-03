.class Lcn/nubia/redmagickyi/crop/AudioFocus$1;
.super Ljava/lang/Object;
.source "AudioFocus.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/AudioFocus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$100(Lcn/nubia/redmagickyi/crop/AudioFocus;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$300(Lcn/nubia/redmagickyi/crop/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$200(Lcn/nubia/redmagickyi/crop/AudioFocus;)I

    move-result v0

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$102(Lcn/nubia/redmagickyi/crop/AudioFocus;Z)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/crop/AudioFocus$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/AudioFocus$1$1;-><init>(Lcn/nubia/redmagickyi/crop/AudioFocus$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/crop/AudioFocus$1$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/AudioFocus$1$2;-><init>(Lcn/nubia/redmagickyi/crop/AudioFocus$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$102(Lcn/nubia/redmagickyi/crop/AudioFocus;Z)Z

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$300(Lcn/nubia/redmagickyi/crop/AudioFocus;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$202(Lcn/nubia/redmagickyi/crop/AudioFocus;I)I

    .line 70
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$300(Lcn/nubia/redmagickyi/crop/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$200(Lcn/nubia/redmagickyi/crop/AudioFocus;)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, v3, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    :goto_0
    return-void
.end method
