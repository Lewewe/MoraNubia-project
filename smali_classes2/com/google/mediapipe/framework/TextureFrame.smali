.class public interface abstract Lcom/google/mediapipe/framework/TextureFrame;
.super Ljava/lang/Object;
.source "TextureFrame.java"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureReleaseCallback;


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getTextureName()I
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncToken"
        }
    .end annotation
.end method
