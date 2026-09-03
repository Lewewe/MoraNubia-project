.class public interface abstract Lcom/google/mediapipe/components/AudioDataConsumer;
.super Ljava/lang/Object;
.source "AudioDataConsumer.java"


# virtual methods
.method public abstract onNewAudioData(Ljava/nio/ByteBuffer;JLandroid/media/AudioFormat;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioData",
            "timestampMicros",
            "audioFormat"
        }
    .end annotation
.end method
