.class public Lcom/google/mediapipe/solutioncore/CameraInput;
.super Ljava/lang/Object;
.source "CameraInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/CameraInput$CameraFacing;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraInput"


# instance fields
.field private final cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

.field private converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

.field private customOnCameraStartedListener:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

.field private frameTexture:Landroid/graphics/SurfaceTexture;

.field private newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/mediapipe/components/CameraXPreviewHelper;

    invoke-direct {v0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    .line 57
    invoke-static {p1}, Lcom/google/mediapipe/components/PermissionHelper;->checkAndRequestCameraPermissions(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter;->close()V

    :cond_0
    return-void
.end method

.method public isCameraRotated()Z
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    invoke-virtual {p0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->isCameraRotated()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$start$0$com-google-mediapipe-solutioncore-CameraInput(IILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/solutioncore/CameraInput;->updateOutputSize(II)V

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->customOnCameraStartedListener:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

    if-eqz p0, :cond_1

    .line 109
    invoke-interface {p0, p3}, Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;->onCameraStarted(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    return-void
.end method

.method public setNewFrameListener(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

    return-void
.end method

.method public setOnCameraStartedListener(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->customOnCameraStartedListener:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

    return-void
.end method

.method public start(Landroid/app/Activity;Ljavax/microedition/khronos/egl/EGLContext;Lcom/google/mediapipe/solutioncore/CameraInput$CameraFacing;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "eglContext",
            "cameraFacing",
            "width",
            "height"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Lcom/google/mediapipe/components/PermissionHelper;->cameraPermissionsGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/google/mediapipe/components/ExternalTextureConverter;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/google/mediapipe/components/ExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

    if-eqz p2, :cond_5

    .line 100
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    invoke-virtual {p2}, Lcom/google/mediapipe/components/ExternalTextureConverter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iput-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->frameTexture:Landroid/graphics/SurfaceTexture;

    .line 101
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

    invoke-virtual {p2, v0}, Lcom/google/mediapipe/components/ExternalTextureConverter;->setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    .line 102
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    new-instance v0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4, p5}, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/solutioncore/CameraInput;II)V

    invoke-virtual {p2, v0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->setOnCameraStartedListener(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;)V

    .line 112
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    .line 114
    sget-object v0, Lcom/google/mediapipe/solutioncore/CameraInput$CameraFacing;->FRONT:Lcom/google/mediapipe/solutioncore/CameraInput$CameraFacing;

    if-ne p3, v0, :cond_2

    .line 115
    sget-object p3, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->FRONT:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    goto :goto_0

    .line 116
    :cond_2
    sget-object p3, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->BACK:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    :goto_0
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->frameTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p4, :cond_4

    if-nez p5, :cond_3

    goto :goto_1

    .line 118
    :cond_3
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p4, p5}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 112
    :goto_2
    invoke-virtual {p2, p1, p3, p0, v0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->startCamera(Landroid/app/Activity;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    return-void

    .line 96
    :cond_5
    new-instance p0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 97
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p1

    const-string p2, "newFrameListener is not set."

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public updateOutputSize(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->computeDisplaySizeFromViewSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->cameraHelper:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    invoke-virtual {p2}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->isCameraRotated()Z

    move-result p2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set camera output texture frame size to width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "CameraInput"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/CameraInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 139
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter;->setDestinationSize(II)V

    return-void
.end method
