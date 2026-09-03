.class public Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;
.super Landroid/view/SurfaceView;
.source "CameraSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;,
        Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;,
        Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$Type;
    }
.end annotation


# static fields
.field public static final CAMERA_BACK:I = 0x1

.field public static final CAMERA_FRONT:I = 0x0

.field private static final PREVIEW_RATIO:F = 1.7777778f

.field private static final TAG:Ljava/lang/String; = "CameraSurface"


# instance fields
.field private cameraAvailabilityManager:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

.field private cameraType:I

.field index:I

.field private volatile isCaptrue:Z

.field private isFaceMode:Z

.field private mBuffer:[B

.field private mCamera:Landroid/hardware/Camera;

.field nv12:[B

.field private onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

.field private size:Landroid/hardware/Camera$Size;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->isFaceMode:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->cameraType:I

    .line 168
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->index:I

    .line 65
    new-instance p1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->cameraAvailabilityManager:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private NV21ToNV12([B[BII)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    mul-int/2addr p3, p4

    const/4 p0, 0x0

    .line 147
    invoke-static {p1, p0, p2, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p4, p0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 149
    aget-byte v0, p1, p4

    aput-byte v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    move p4, p0

    .line 151
    :goto_1
    div-int/lit8 v0, p3, 0x2

    if-ge p4, v0, :cond_2

    add-int v0, p3, p4

    add-int/lit8 v1, v0, -0x1

    .line 153
    aget-byte v0, p1, v0

    aput-byte v0, p2, v1

    add-int/lit8 p4, p4, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p0, v0, :cond_3

    add-int p4, p3, p0

    add-int/lit8 v1, p4, -0x1

    .line 157
    aget-byte v1, p1, v1

    aput-byte v1, p2, p4

    add-int/lit8 p0, p0, 0x2

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getCameraId()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getBestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera$Size;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->size:Landroid/hardware/Camera$Size;

    return-object p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->size:Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;I)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getPortraitCameraDisplayOrientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)[B
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mBuffer:[B

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;[B)[B
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mBuffer:[B

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->isFaceMode:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private captrue([B)V
    .locals 9

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 173
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 177
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 178
    new-instance v1, Landroid/graphics/YuvImage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->size:Landroid/hardware/Camera$Size;

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->size:Landroid/hardware/Camera$Size;

    iget v7, p0, Landroid/hardware/Camera$Size;->width:I

    const/4 v8, 0x0

    const/16 v5, 0x11

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 179
    new-instance p0, Landroid/graphics/Rect;

    .line 180
    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x64

    .line 179
    invoke-virtual {v1, p0, p1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getBestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 102
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe38e39

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    if-eqz p1, :cond_1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    :cond_1
    move-object p1, v1

    move v0, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getCameraId()I
    .locals 0

    .line 220
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->cameraType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPortraitCameraDisplayOrientation(I)I
    .locals 4

    .line 112
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 113
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    :cond_3
    :goto_0
    if-ne p1, v1, :cond_4

    .line 127
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v2

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 128
    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    .line 130
    :cond_4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v2

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    return p0
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onChanged()V
    .locals 2

    .line 385
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getCameraId()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getPortraitCameraDisplayOrientation(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set display orientation failed. cause  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSurface"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    const-string p0, "CameraSurface"

    const-string p1, "onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mCamera:Landroid/hardware/Camera;

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->cameraType:I

    return-void
.end method

.method public setFaceMode(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->isFaceMode:Z

    return-void
.end method

.method public setOnCameraOperateCallback(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    return-void
.end method

.method public startCaptrue()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->isCaptrue:Z

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 82
    const-string v0, "CameraSurface"

    const-string v1, "startPreview begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->cameraAvailabilityManager:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 87
    const-string v0, "CameraSurface"

    const-string v1, "stopPreview begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->cameraAvailabilityManager:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->performStopPerview()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 191
    const-string p1, "CameraSurface"

    const-string p2, "surfaceChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getCameraId()I

    move-result p2

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getPortraitCameraDisplayOrientation(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 199
    const-string p1, "CameraSurface"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->startPreview()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    if-eqz p0, :cond_1

    .line 204
    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;->onCameraRecreated()V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 211
    const-string p1, "CameraSurface"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->stopPreview()V

    return-void
.end method
