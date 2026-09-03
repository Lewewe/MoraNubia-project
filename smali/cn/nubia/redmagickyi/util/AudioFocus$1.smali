.class Lcn/nubia/redmagickyi/util/AudioFocus$1;
.super Ljava/lang/Object;
.source "AudioFocus.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/AudioFocus;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/AudioFocus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio onAudioFocusChange = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$700(Lcn/nubia/redmagickyi/util/AudioFocus;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$300(Lcn/nubia/redmagickyi/util/AudioFocus;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$500(Lcn/nubia/redmagickyi/util/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$400(Lcn/nubia/redmagickyi/util/AudioFocus;)I

    move-result v0

    invoke-virtual {p1, v1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$302(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z

    .line 126
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$000(Lcn/nubia/redmagickyi/util/AudioFocus;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$200(Lcn/nubia/redmagickyi/util/AudioFocus;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 127
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$002(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z

    .line 128
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$202(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z

    .line 129
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus$1$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/AudioFocus$1$3;-><init>(Lcn/nubia/redmagickyi/util/AudioFocus$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$002(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/AudioFocus$1$1;-><init>(Lcn/nubia/redmagickyi/util/AudioFocus$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$202(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z

    .line 105
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus$1$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/AudioFocus$1$2;-><init>(Lcn/nubia/redmagickyi/util/AudioFocus$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 115
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$302(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$500(Lcn/nubia/redmagickyi/util/AudioFocus;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$402(Lcn/nubia/redmagickyi/util/AudioFocus;I)I

    .line 117
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$500(Lcn/nubia/redmagickyi/util/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$400(Lcn/nubia/redmagickyi/util/AudioFocus;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$600(Lcn/nubia/redmagickyi/util/AudioFocus;)V

    :cond_6
    :goto_0
    return-void
.end method
