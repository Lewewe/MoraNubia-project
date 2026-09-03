.class Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;
.super Ljava/lang/Object;
.source "UnityAudioManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgmMediaPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

.field private unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)V

    return-void
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->access$200(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 288
    const-string p0, "UnityAudioManager"

    return-object p0
.end method

.method public getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
    .locals 0

    .line 330
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->access$300(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 325
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 315
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->setVolume(F)V

    return-void
.end method

.method public start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    .line 300
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method
