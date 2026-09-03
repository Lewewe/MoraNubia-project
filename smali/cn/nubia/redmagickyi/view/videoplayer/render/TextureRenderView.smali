.class public Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private volatile isSurfaceAvailable:Z

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    return-void
.end method


# virtual methods
.method public attachToPlayer(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public clearSurface()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearSurface "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureRenderView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v9

    const/4 v10, 0x2

    .line 93
    new-array v1, v10, [I

    const/4 v2, 0x1

    .line 94
    invoke-static {v9, v1, v0, v1, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    const/16 v1, 0xd

    .line 96
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/4 v6, 0x1

    .line 105
    new-array v11, v6, [Landroid/opengl/EGLConfig;

    .line 106
    new-array v7, v2, [I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, v3

    move v3, v4

    move-object v4, v11

    .line 107
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 109
    aget-object v1, v11, v0

    .line 110
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v3, 0x3098

    const/16 v4, 0x3038

    filled-new-array {v3, v10, v4}, [I

    move-result-object v3

    invoke-static {v9, v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurface:Landroid/view/Surface;

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-static {v9, v1, p0, v3, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    .line 114
    invoke-static {v9, p0, p0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 115
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 116
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 117
    invoke-static {v9, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 118
    invoke-static {v9, p0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 119
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v9, p0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 120
    invoke-static {v9, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 121
    invoke-static {v9}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->doMeasure(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureAvailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureRenderView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 141
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 142
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurface:Landroid/view/Surface;

    .line 143
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureDestroyed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureRenderView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->isSurfaceAvailable:Z

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureRenderView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 80
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->setScreenScale(I)V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->requestLayout()V

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    .line 53
    invoke-super {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    if-eq p1, p0, :cond_0

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    :cond_0
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->setVideoRotation(I)V

    int-to-float p1, p1

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setRotation(F)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->mMeasureHelper:Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->setVideoSize(II)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method
