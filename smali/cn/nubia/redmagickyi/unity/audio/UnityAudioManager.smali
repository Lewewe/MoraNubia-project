.class public Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;
.super Ljava/lang/Object;
.source "UnityAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;,
        Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;,
        Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityAudioManager"

.field private static final VERSION_1:Ljava/lang/String; = "_V20260114"

.field private static volatile instance:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager; = null

.field private static final version:Ljava/lang/String; = "_V20260114"


# instance fields
.field private audioCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bgmMute:Z

.field private bgmPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

.field private bgmVolume:F

.field private screenLockedChecker:Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;

.field private voiceMute:Z

.field private voicePlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

.field private voiceVolume:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    new-instance v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voicePlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmVolume:F

    iput v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceVolume:F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmMute:Z

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceMute:Z

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->audioCallbacks:Ljava/util/List;

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->screenLockedChecker:Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->audioCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method

.method private adjustVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 16

    move-object/from16 v0, p0

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 193
    invoke-direct/range {p0 .. p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isMute(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z

    move-result v2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adjustVolume before: type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bgmVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmVolume:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", voiceVolume = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceVolume:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", volume = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mute = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "UnityAudioManager"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v3

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    const/high16 v10, 0x42480000    # 50.0f

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    div-float/2addr v1, v13

    sub-float/2addr v10, v1

    float-to-double v14, v10

    .line 200
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v13, v8

    sub-double/2addr v11, v13

    double-to-float v1, v11

    .line 201
    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v8

    if-nez v8, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 204
    :cond_1
    iput v1, v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmVolume:F

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    div-float/2addr v1, v13

    sub-float/2addr v10, v1

    float-to-double v13, v10

    .line 207
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v13, v8

    sub-double/2addr v11, v13

    double-to-float v1, v11

    .line 208
    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v8

    if-nez v8, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 211
    :cond_3
    iput v1, v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceVolume:F

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 216
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "adjustVolume after: type = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmVolume:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceVolume:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v2

    invoke-direct {v0, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->setVolume(F)V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;
    .locals 2

    .line 44
    sget-object v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->instance:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->instance:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->instance:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->instance:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    return-object v0
.end method

.method private getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;
    .locals 1

    if-nez p1, :cond_0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voicePlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
    .locals 1

    .line 233
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isMute(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmVolume:F

    return p0

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 239
    iget p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceVolume:F

    return p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private isMute(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z
    .locals 1

    .line 247
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmMute:Z

    return p0

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 250
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceMute:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private muteVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "muteVolume: type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bgmVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmVolume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", voiceVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceVolume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityAudioManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->bgmMute:Z

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 226
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->voiceMute:Z

    .line 228
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result v0

    .line 229
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->setVolume(F)V

    return-void
.end method

.method private pauseAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pauseAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method private playAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method private releaseAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "releaseAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method private resumeAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resumeAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public static sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 257
    new-instance v6, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToAndroid(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private stopAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopAudio, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method


# virtual methods
.method public createStopAudioPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".wav"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTTSPathForUnity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnitySDK;->isPreferTtsToPlayAudio()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 64
    const-string p0, "chongdian"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "_"

    const-string v1, "/Audio/"

    if-eqz p0, :cond_0

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getSystemLanguageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_V20260114_b1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getSystemLanguageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_V20260114"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public handleAudioAction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->screenLockedChecker:Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->isEnablePlayWhenScreenLocked(Ljava/lang/String;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->releaseAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->muteVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->adjustVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->pauseAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->resumeAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 106
    :pswitch_5
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->stopAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 97
    :pswitch_6
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isStopAudioPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->stopAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->playAudio(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isMediaPlaying(I)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getMediaPlayer(I)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public isStopAudioPath(Ljava/lang/String;)Z
    .locals 0

    .line 55
    const-string p0, "/None.wav"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "/.wav"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "/None.mp3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "/.mp3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    new-instance p0, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 133
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    move-object v0, p1

    move-object v1, v0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, "type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_0
    const-string v3, "action"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    const-string v3, "motionID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 142
    :cond_2
    const-string v3, "path"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 144
    :cond_3
    const-string v3, "params"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 150
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 152
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method public registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->audioCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnablePlayWhenScreenLocked(Z)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->screenLockedChecker:Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->setEnablePlayWhenScreenLocked(Z)V

    return-void
.end method

.method public unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->audioCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
