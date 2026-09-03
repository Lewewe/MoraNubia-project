.class public interface abstract Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/components/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraStartedListener"
.end annotation


# virtual methods
.method public abstract onCameraStarted(Landroid/graphics/SurfaceTexture;)V
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation
.end method
