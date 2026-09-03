.class public Lcom/zte/screenshot/ScreenShoter;
.super Ljava/lang/Object;
.source "ScreenShoter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenShoter"


# instance fields
.field private context:Landroid/content/Context;

.field private mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/zte/screenshot/ScreenShoter;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 41
    new-instance p1, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;

    invoke-direct {p1}, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;-><init>()V

    iput-object p1, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;

    invoke-direct {p1}, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;-><init>()V

    iput-object p1, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    .line 45
    :goto_0
    new-instance p1, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;

    invoke-direct {p1}, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;-><init>()V

    iput-object p1, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    return-void
.end method

.method private getScreenShotBitmapR(IIF)Landroid/graphics/Bitmap;
    .locals 3

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    iget p3, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    sub-int p3, p1, p3

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    invoke-direct {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    move p1, p3

    goto :goto_2

    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    .line 111
    iget p3, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    sub-int p3, p2, p3

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    sub-int/2addr p2, v2

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    move p2, p3

    goto :goto_2

    :cond_1
    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_2

    .line 115
    iget p3, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    sub-int p3, p1, p3

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    sub-int/2addr p1, v2

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 119
    :cond_2
    iget p3, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    sub-int p3, p2, p3

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 122
    :goto_2
    invoke-direct {p0, v0, p1, p2}, Lcom/zte/screenshot/ScreenShoter;->screenshotOnAndroidR(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getScreenShotBitmapS()Landroid/graphics/Bitmap;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget v1, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->getScreenShotCropRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/screenshot/ScreenShoter;->screenshotOnAndroidS(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getScreenShotBitmapU()Landroid/graphics/Bitmap;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget v1, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->getScreenShotCropRectU(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/zte/screenshot/ScreenShoter;->screenshotOnAndroidU(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getStatusBarHeight(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    iget p2, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/zte/screenshot/ScreenShoter;->loadStatusBarHeight(Landroid/content/Context;)V

    .line 54
    :cond_1
    iget p0, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    return p0
.end method

.method private loadStatusBarHeight(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    :cond_0
    return-void
.end method

.method private screenshotOnAndroidR(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 127
    const-string p0, "ScreenShoter"

    const/4 v0, 0x0

    .line 129
    :try_start_0
    const-string v1, "android.view.SurfaceControl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    const-string v1, "ClassNotFoundException !!!! SurfaceControl"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 137
    :cond_0
    :try_start_1
    const-string v2, "screenshot"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, p2, p3, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 139
    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 142
    :catch_1
    const-string p1, "surface NoSuchMethodException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private screenshotOnAndroidS(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 149
    const-string v0, "ScreenShoter"

    .line 0
    const-string v1, "Skipping Screenshot - Default display does not have a physical address: "

    const/4 v2, 0x0

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/zte/screenshot/ScreenShoter;->context:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    .line 152
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 154
    instance-of v6, v5, Landroid/view/DisplayAddress$Physical;

    if-nez v6, :cond_0

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    :cond_0
    check-cast v5, Landroid/view/DisplayAddress$Physical;

    .line 159
    invoke-virtual {v5}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v5

    .line 160
    const-string v1, "android.view.SurfaceControl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 161
    const-string v3, "getPhysicalDisplayToken"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 163
    const-string v5, "android.view.SurfaceControl$DisplayCaptureArgs$Builder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 164
    new-array v6, v7, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 165
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    const-string v6, "setSourceCrop"

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/Rect;

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 167
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v6, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string p1, "setSize"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v5, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string p1, "build"

    new-array p2, v4, [Ljava/lang/Class;

    invoke-virtual {v5, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 171
    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 172
    const-string p2, "android.view.SurfaceControl$DisplayCaptureArgs"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 173
    const-string p3, "captureDisplay"

    new-array v3, v7, [Ljava/lang/Class;

    aput-object p2, v3, v4

    invoke-virtual {v1, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 174
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 175
    const-string p2, "android.view.SurfaceControl$ScreenshotHardwareBuffer"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 176
    const-string p3, "asBitmap"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 177
    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    .line 178
    :cond_1
    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz p1, :cond_2

    .line 180
    iget-object p0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    invoke-virtual {p0, p1}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->tryRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    return-object v2

    :catch_0
    move-exception p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "screenshot,e:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private screenshotOnAndroidU(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    .line 192
    const-string v0, "Taking fullscreen screenshot"

    const-string v1, "ScreenShoter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->context:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v3

    .line 197
    instance-of v3, v3, Landroid/view/DisplayAddress$Physical;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping Screenshot - Default display does not have a physical address: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 202
    new-instance v3, Landroid/window/ScreenCapture$CaptureArgs$Builder;

    invoke-direct {v3}, Landroid/window/ScreenCapture$CaptureArgs$Builder;-><init>()V

    invoke-virtual {v3, p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->build()Landroid/window/ScreenCapture$CaptureArgs;

    move-result-object p1

    .line 203
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3, v2, p1, v0}, Landroid/view/IWindowManager;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V

    .line 204
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 207
    const-string v0, "Error : "

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v4, :cond_2

    .line 211
    iget-object p0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    invoke-virtual {p0, v4}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->tryRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2
    return-object v4
.end method


# virtual methods
.method public loadScreenShot()Landroid/graphics/Bitmap;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/screenshot/ScreenShoter;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    .line 71
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget-object v1, p0, Lcom/zte/screenshot/ScreenShoter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->adaptScreenRotate(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget v1, p0, Lcom/zte/screenshot/ScreenShoter;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->modifyPressPoint(I)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/zte/screenshot/ScreenShoter;->getScreenShotBitmapU()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 76
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/zte/screenshot/ScreenShoter;->getScreenShotBitmapS()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget v0, v0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mDisplayWidth:I

    iget-object v1, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget v1, v1, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mDisplayHeight:I

    iget-object v2, p0, Lcom/zte/screenshot/ScreenShoter;->mCallingAppDataAdapt:Lcom/zte/screenshot/BaseCallingAppDataAdapt;

    iget v2, v2, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mDisplayRotationDegrees:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/screenshot/ScreenShoter;->getScreenShotBitmapR(IIF)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method
