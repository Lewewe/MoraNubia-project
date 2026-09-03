.class public Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;
.super Landroid/view/SurfaceView;
.source "CameraSurfacePC.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;,
        Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$Type;
    }
.end annotation


# static fields
.field public static final CAMERA_BACK:I = 0x1

.field public static final CAMERA_FRONT:I = 0x0

.field private static PREVIEW_RATIO:F = 1.7777778f

.field private static final TAG:Ljava/lang/String; = "CameraSurfacePC"

.field private static defaultHeight:Ljava/lang/Integer;

.field private static defaultWidth:Ljava/lang/Integer;


# instance fields
.field private cameraType:I

.field private firstTimeStartPreview:Z

.field index:I

.field private volatile isCaptrue:Z

.field private isFaceMode:Z

.field private isResizeing:Ljava/lang/Boolean;

.field private mBuffer:[B

.field private mCamera:Landroid/hardware/Camera;

.field nv12:[B

.field private onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;

.field private size:Landroid/hardware/Camera$Size;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isFaceMode:Z

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isResizeing:Ljava/lang/Boolean;

    .line 43
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->firstTimeStartPreview:Z

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->cameraType:I

    .line 265
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->index:I

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getHolder()Landroid/view/SurfaceHolder;

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

    .line 222
    invoke-static {p1, p0, p2, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p4, p0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 224
    aget-byte v0, p1, p4

    aput-byte v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    move p4, p0

    .line 226
    :goto_1
    div-int/lit8 v0, p3, 0x2

    if-ge p4, v0, :cond_2

    add-int v0, p3, p4

    add-int/lit8 v1, v0, -0x1

    .line 228
    aget-byte v0, p1, v0

    aput-byte v0, p2, v1

    add-int/lit8 p4, p4, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p0, v0, :cond_3

    add-int p4, p3, p0

    add-int/lit8 v1, p4, -0x1

    .line 232
    aget-byte v1, p1, v1

    aput-byte v1, p2, p4

    add-int/lit8 p0, p0, 0x2

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isResizeing:Ljava/lang/Boolean;

    return-object p1
.end method

.method private captrue([B)V
    .locals 9

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 274
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 275
    new-instance v1, Landroid/graphics/YuvImage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->size:Landroid/hardware/Camera$Size;

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->size:Landroid/hardware/Camera$Size;

    iget v7, p0, Landroid/hardware/Camera$Size;->width:I

    const/4 v8, 0x0

    const/16 v5, 0x11

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 276
    new-instance p0, Landroid/graphics/Rect;

    .line 277
    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x64

    .line 276
    invoke-virtual {v1, p0, p1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getBestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
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

    .line 158
    sget v2, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->PREVIEW_RATIO:F

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

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

    .line 319
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->cameraType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPortraitCameraDisplayOrientation(I)I
    .locals 4

    .line 168
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 169
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 171
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getContext()Landroid/content/Context;

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

    .line 183
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v2

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 184
    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    .line 186
    :cond_4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v2

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    return p0
.end method

.method private resize(Landroid/hardware/Camera$Size;)V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 194
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 195
    sget v2, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->PREVIEW_RATIO:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 197
    sget-object v1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 198
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v2, v1

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v2, p1

    .line 199
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 202
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 203
    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v1

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    div-int/2addr v2, p1

    .line 204
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "resize width = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", height = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSurfacePC"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    const-string p0, "CameraSurfacePC"

    const-string p1, "onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "camera error code = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSurfacePC"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;

    if-eqz p0, :cond_0

    .line 261
    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;->onCameraError()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 238
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    if-eqz p2, :cond_2

    .line 239
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isResizeing:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isResizeing:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 241
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isResizeing:Ljava/lang/Boolean;

    .line 242
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->resize(Landroid/hardware/Camera$Size;)V

    .line 244
    new-instance p1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->cameraType:I

    return-void
.end method

.method public setFaceMode(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isFaceMode:Z

    return-void
.end method

.method public setOnCameraOperateCallback(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;

    return-void
.end method

.method public startCaptrue()V
    .locals 1

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isCaptrue:Z

    return-void
.end method

.method public startPrview()V
    .locals 5

    .line 80
    const-string v0, "CameraSurfacePC"

    .line 0
    const-string v1, "startPrview: size =  "

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    const-string v2, "startPrview begin"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getCameraId()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    .line 88
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 89
    sget-object v3, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    sget-object v3, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultHeight:Ljava/lang/Integer;

    if-nez v3, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultWidth:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultHeight:Ljava/lang/Integer;

    .line 92
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->defaultWidth:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sput v3, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->PREVIEW_RATIO:F

    .line 94
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getBestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    .line 97
    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 98
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 99
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->firstTimeStartPreview:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->firstTimeStartPreview:Z

    .line 101
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->resize(Landroid/hardware/Camera$Size;)V

    .line 104
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->size:Landroid/hardware/Camera$Size;

    .line 105
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 106
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getPortraitCameraDisplayOrientation(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 107
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->size:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->size:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mBuffer:[B

    .line 108
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 111
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isFaceMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 113
    :try_start_1
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const v2, 0x8d65

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 114
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 116
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    :cond_4
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 121
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 122
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 123
    const-string v1, "startPrview end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startPrview error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->onCameraOperateCallback:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;

    if-eqz p0, :cond_5

    .line 127
    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$OnCameraOperateCallback;->onCameraError()V

    .line 129
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->stopPreview()V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 134
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    const-string v0, "CameraSurfacePC"

    const-string v1, "stopPreview: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->isResizeing:Ljava/lang/Boolean;

    .line 139
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 141
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 142
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 143
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->mCamera:Landroid/hardware/Camera;

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 288
    const-string p0, "CameraSurfacePC"

    const-string p1, "surfaceChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 296
    const-string p1, "CameraSurfacePC"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->startPrview()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 308
    const-string p1, "CameraSurfacePC"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->stopPreview()V

    return-void
.end method
