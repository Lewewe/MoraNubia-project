.class Lcom/zte/aivoice/tts/audio/AudioChecker;
.super Ljava/lang/Object;
.source "AudioChecker.java"


# static fields
.field private static final DISABLE_PLAY_EVERYTIME:I = 0x1

.field private static final DISABLE_PLAY_WHEN_SCREENLOCKED:I = 0x2

.field private static final MSG_RECHECK_ENABLE_PLAY_VOICE_PLAY:I = 0x0

.field private static final MSG_RECHECK_ENABLE_PLAY_VOICE_RESUME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioChecker"


# instance fields
.field private context:Landroid/content/Context;

.field private disablePlay:I

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    .line 24
    new-instance v0, Lcom/zte/aivoice/tts/audio/AudioChecker$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioChecker$1;-><init>(Lcom/zte/aivoice/tts/audio/AudioChecker;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public isDisablePlay(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)Z
    .locals 6

    .line 46
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 51
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 61
    :cond_2
    iget v0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v2, :cond_3

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_3
    and-int/2addr v0, v2

    if-ne v0, v1, :cond_4

    .line 64
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/aivoice/tts/util/KeyguardUtil;->ScreenUnLock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    .line 69
    :goto_1
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 70
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getAction()I

    move-result v1

    const-wide/16 v4, 0x64

    if-nez v1, :cond_5

    .line 72
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_6

    .line 77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 78
    iput v3, v1, Landroid/os/Message;->what:I

    .line 79
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 86
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_6

    .line 89
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 90
    iput v3, v1, Landroid/os/Message;->what:I

    .line 91
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_2
    move v3, v0

    :cond_7
    :goto_3
    return v3
.end method

.method public setDisablePlayEveryTime(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 114
    iget p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    goto :goto_0

    .line 116
    :cond_0
    iget p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    :goto_0
    return-void
.end method

.method public setDisablePlayWhenScreenLocked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iget p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    goto :goto_0

    .line 108
    :cond_0
    iget p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/zte/aivoice/tts/audio/AudioChecker;->disablePlay:I

    :goto_0
    return-void
.end method
