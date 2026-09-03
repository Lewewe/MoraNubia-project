.class public abstract Lcom/google/mediapipe/components/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/components/CameraHelper$CameraFacing;,
        Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraHelper"


# instance fields
.field protected cameraFacing:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

.field protected onCameraStartedListener:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract computeDisplaySizeFromViewSize(Landroid/util/Size;)Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewSize"
        }
    .end annotation
.end method

.method public abstract isCameraRotated()Z
.end method

.method public setOnCameraStartedListener(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;)V
    .locals 0
    .param p1    # Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/google/mediapipe/components/CameraHelper;->onCameraStartedListener:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

    return-void
.end method

.method public abstract startCamera(Landroid/app/Activity;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;)V
    .param p3    # Landroid/graphics/SurfaceTexture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraFacing",
            "surfaceTexture"
        }
    .end annotation
.end method
