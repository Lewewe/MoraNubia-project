.class public interface abstract Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioCallback"
.end annotation


# virtual methods
.method public abstract onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
.end method

.method public abstract onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method

.method public abstract onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method

.method public abstract onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method

.method public abstract onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end method
