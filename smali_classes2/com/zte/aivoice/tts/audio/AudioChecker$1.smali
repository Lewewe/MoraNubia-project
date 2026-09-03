.class Lcom/zte/aivoice/tts/audio/AudioChecker$1;
.super Landroid/os/Handler;
.source "AudioChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/AudioChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aivoice/tts/audio/AudioChecker;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/audio/AudioChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker$1;->this$0:Lcom/zte/aivoice/tts/audio/AudioChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    .line 33
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker$1;->this$0:Lcom/zte/aivoice/tts/audio/AudioChecker;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioChecker;->handleAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
