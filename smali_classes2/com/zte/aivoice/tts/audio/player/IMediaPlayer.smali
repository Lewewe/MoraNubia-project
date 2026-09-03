.class public interface abstract Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# virtual methods
.method public abstract getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public abstract getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method

.method public abstract resume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method

.method public abstract stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method
