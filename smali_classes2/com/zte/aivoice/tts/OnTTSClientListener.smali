.class public interface abstract Lcom/zte/aivoice/tts/OnTTSClientListener;
.super Ljava/lang/Object;
.source "OnTTSClientListener.java"

# interfaces
.implements Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;


# virtual methods
.method public abstract onSynthesisBegin(Ljava/lang/String;)V
.end method

.method public abstract onSynthesisCompleted(Ljava/lang/String;Z)V
.end method

.method public abstract onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
.end method
