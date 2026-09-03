.class public interface abstract Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# virtual methods
.method public abstract getCallbacks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public abstract getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end method

.method public abstract release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end method

.method public abstract resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end method

.method public abstract stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end method
