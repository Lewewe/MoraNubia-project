.class public Lcom/zte/aivoice/tts/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;,
        Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlayer"

.field private static instance:Lcom/zte/aivoice/tts/audio/AudioPlayer;


# instance fields
.field private audioCallback:Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

.field private audioChecker:Lcom/zte/aivoice/tts/audio/AudioChecker;

.field private context:Landroid/content/Context;

.field private voiceMute:Z

.field private voicePlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

.field private voiceVolume:F

.field private workHandler:Landroid/os/Handler;

.field private workThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;-><init>(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/AudioPlayer$1;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voicePlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceVolume:F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceMute:Z

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->handleAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/aivoice/tts/audio/AudioPlayer;)Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->audioCallback:Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method

.method private adjustVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 7

    .line 135
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 136
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->isMute(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)Z

    move-result v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adjustVolume before: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", voiceVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceVolume:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", volume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mute = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AudioPlayer"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 142
    iput v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceVolume:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 147
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "adjustVolume after: type = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceVolume:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->setVolume(F)V

    return-void
.end method

.method public static getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;
    .locals 1

    .line 49
    sget-object v0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->instance:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/zte/aivoice/tts/audio/AudioPlayer;

    invoke-direct {v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;-><init>()V

    sput-object v0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->instance:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    .line 52
    :cond_0
    sget-object v0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->instance:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    return-object v0
.end method

.method private getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voicePlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F
    .locals 1

    .line 164
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->isMute(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 168
    iget p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceVolume:F

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private handleAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    if-eqz p1, :cond_6

    .line 76
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->audioChecker:Lcom/zte/aivoice/tts/audio/AudioChecker;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/AudioChecker;->isDisablePlay(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAudioAction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->muteVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->adjustVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->pauseAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->resumeAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_0

    .line 83
    :cond_4
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->stopAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_0

    .line 80
    :cond_5
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->playAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private muteVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "muteVolume: type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", voiceVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceVolume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 157
    iput-boolean v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceMute:Z

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F

    move-result v0

    .line 160
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->setVolume(F)V

    return-void
.end method

.method private pauseAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pauseAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->pause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private playAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private resumeAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resumeAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->resume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public static sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAudioAction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->workHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zte/aivoice/tts/audio/AudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$2;-><init>(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopAudio(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/zte/aivoice/tts/audio/AudioPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$1;-><init>(Lcom/zte/aivoice/tts/audio/AudioPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->audioChecker:Lcom/zte/aivoice/tts/audio/AudioChecker;

    .line 38
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "audio thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->workThread:Landroid/os/HandlerThread;

    .line 39
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->workHandler:Landroid/os/Handler;

    return-void
.end method

.method public isMediaPlaying(I)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getMediaPlayer(I)Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public isMute(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)Z
    .locals 1

    .line 176
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 177
    iget-boolean p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->voiceMute:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public setAudioCallback(Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->audioCallback:Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    return-void
.end method

.method public setDisablePlayEveryTime(Z)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->audioChecker:Lcom/zte/aivoice/tts/audio/AudioChecker;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioChecker;->setDisablePlayEveryTime(Z)V

    :cond_0
    return-void
.end method

.method public setDisablePlayWhenScreenLocked(Z)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer;->audioChecker:Lcom/zte/aivoice/tts/audio/AudioChecker;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioChecker;->setDisablePlayWhenScreenLocked(Z)V

    :cond_0
    return-void
.end method
