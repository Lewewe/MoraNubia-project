.class public Lorg/libpag/VideoSurface;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static HandlerThreadCount:I

.field private static final handlerLock:Ljava/lang/Object;

.field private static handlerThread:Landroid/os/HandlerThread;


# instance fields
.field private frameAvailable:Z

.field private final frameSyncObject:Ljava/lang/Object;

.field private height:I

.field private outputSurface:Landroid/view/Surface;

.field private released:Z

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/libpag/VideoSurface;->handlerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lorg/libpag/VideoSurface;->width:I

    .line 27
    iput v0, p0, Lorg/libpag/VideoSurface;->height:I

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/libpag/VideoSurface;->frameSyncObject:Ljava/lang/Object;

    .line 31
    iput-boolean v0, p0, Lorg/libpag/VideoSurface;->frameAvailable:Z

    .line 32
    iput-boolean v0, p0, Lorg/libpag/VideoSurface;->released:Z

    return-void
.end method

.method private static Make(II)Lorg/libpag/VideoSurface;
    .locals 3

    .line 35
    new-instance v0, Lorg/libpag/VideoSurface;

    invoke-direct {v0}, Lorg/libpag/VideoSurface;-><init>()V

    .line 36
    iput p0, v0, Lorg/libpag/VideoSurface;->width:I

    .line 37
    iput p1, v0, Lorg/libpag/VideoSurface;->height:I

    .line 38
    sget-object p0, Lorg/libpag/VideoSurface;->handlerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-static {}, Lorg/libpag/VideoSurface;->StartHandlerThread()V

    .line 41
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object p1, v0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 47
    iget-object p1, v0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lorg/libpag/VideoSurface;->handlerThread:Landroid/os/HandlerThread;

    .line 48
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    new-instance p0, Landroid/view/Surface;

    iget-object p1, v0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p0, v0, Lorg/libpag/VideoSurface;->outputSurface:Landroid/view/Surface;

    return-object v0

    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static declared-synchronized StartHandlerThread()V
    .locals 3

    const-class v0, Lorg/libpag/VideoSurface;

    monitor-enter v0

    .line 19
    :try_start_0
    sget v1, Lorg/libpag/VideoSurface;->HandlerThreadCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/libpag/VideoSurface;->HandlerThreadCount:I

    .line 20
    sget-object v1, Lorg/libpag/VideoSurface;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "libpag_VideoSurface"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/libpag/VideoSurface;->handlerThread:Landroid/os/HandlerThread;

    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private attachToGLContext(I)Z
    .locals 0

    .line 155
    :try_start_0
    iget-object p0, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private getOutputSurface()Landroid/view/Surface;
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/libpag/VideoSurface;->outputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private onRelease()V
    .locals 3

    .line 164
    iget-boolean v0, p0, Lorg/libpag/VideoSurface;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lorg/libpag/VideoSurface;->released:Z

    .line 168
    sget-object v1, Lorg/libpag/VideoSurface;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    sget v2, Lorg/libpag/VideoSurface;->HandlerThreadCount:I

    sub-int/2addr v2, v0

    sput v2, Lorg/libpag/VideoSurface;->HandlerThreadCount:I

    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 171
    sget-object v2, Lorg/libpag/VideoSurface;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    sput-object v0, Lorg/libpag/VideoSurface;->handlerThread:Landroid/os/HandlerThread;

    .line 174
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v1, p0, Lorg/libpag/VideoSurface;->outputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 177
    iput-object v0, p0, Lorg/libpag/VideoSurface;->outputSurface:Landroid/view/Surface;

    .line 180
    :cond_2
    iget-object v1, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    .line 181
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 182
    iput-object v0, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 174
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private reflectLooper()V
    .locals 7

    .line 59
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 62
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "handler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/graphics/SurfaceTexture;

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Looper;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    sget-object v3, Lorg/libpag/VideoSurface;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    const-string v3, "mEventHandler"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    iget-object p0, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private updateTexImage()Z
    .locals 5

    .line 127
    iget-object v0, p0, Lorg/libpag/VideoSurface;->frameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xa

    .line 128
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/libpag/VideoSurface;->frameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 133
    :try_start_1
    iget-object v2, p0, Lorg/libpag/VideoSurface;->frameSyncObject:Ljava/lang/Object;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 136
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 139
    iput-boolean v2, p0, Lorg/libpag/VideoSurface;->frameAvailable:Z

    if-nez v1, :cond_1

    .line 141
    monitor-exit v0

    return v2

    .line 143
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    iget-object p0, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catchall_0
    move-exception p0

    .line 143
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private videoHeight()I
    .locals 3

    const/16 v0, 0x10

    .line 113
    new-array v0, v0, [F

    .line 114
    iget-object v1, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v1, 0x5

    .line 115
    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 117
    iget p0, p0, Lorg/libpag/VideoSurface;->height:I

    int-to-float p0, p0

    const/16 v2, 0xd

    aget v0, v0, v2

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 119
    :cond_0
    iget p0, p0, Lorg/libpag/VideoSurface;->height:I

    return p0
.end method

.method private videoWidth()I
    .locals 3

    const/16 v0, 0x10

    .line 102
    new-array v0, v0, [F

    .line 103
    iget-object v1, p0, Lorg/libpag/VideoSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v1, 0x0

    .line 104
    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 106
    iget p0, p0, Lorg/libpag/VideoSurface;->width:I

    int-to-float p0, p0

    const/16 v2, 0xc

    aget v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 108
    :cond_0
    iget p0, p0, Lorg/libpag/VideoSurface;->width:I

    return p0
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lorg/libpag/VideoSurface;->frameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lorg/libpag/VideoSurface;->frameAvailable:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "frameAvailable already set, frame could be dropped"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 90
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/libpag/VideoSurface;->frameAvailable:Z

    .line 93
    iget-object p0, p0, Lorg/libpag/VideoSurface;->frameSyncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
