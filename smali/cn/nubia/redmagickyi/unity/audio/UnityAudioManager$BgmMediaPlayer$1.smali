.class Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;
.super Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;
.source "UnityAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;-><init>()V

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

    .line 277
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 272
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
    .locals 0

    .line 282
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer$1;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$BgmMediaPlayer;->getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method
