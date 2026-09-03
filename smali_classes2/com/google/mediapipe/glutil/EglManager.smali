.class public Lcom/google/mediapipe/glutil/EglManager;
.super Ljava/lang/Object;
.source "EglManager.java"


# static fields
.field public static final EGL14_API_LEVEL:I = 0x11

.field public static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field public static final EGL_DRAW:I = 0x3059

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_OPENGL_ES3_BIT_KHR:I = 0x40

.field public static final EGL_READ:I = 0x305a

.field private static final TAG:Ljava/lang/String; = "EglManager"


# instance fields
.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private egl14Context:Landroid/opengl/EGLContext;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private glVersion:I

.field private nativeEglContext:J

.field private singleIntArray:[I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentContext"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[I)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentContext",
            "additionalConfigAttributes"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 54
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lcom/google/mediapipe/glutil/EglManager;->nativeEglContext:J

    .line 58
    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl14Context:Landroid/opengl/EGLContext;

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->singleIntArray:[I

    .line 80
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 81
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 82
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x2

    .line 85
    new-array v1, v0, [I

    .line 86
    iget-object v2, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    .line 92
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 93
    :cond_0
    instance-of v1, p1, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 94
    check-cast p1, Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 95
    :cond_1
    instance-of v1, p1, Landroid/opengl/EGLContext;

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p1, v1, :cond_2

    .line 98
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 100
    :cond_2
    check-cast p1, Landroid/opengl/EGLContext;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/glutil/EglManager;->egl10ContextFromEgl14Context(Landroid/opengl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    :goto_0
    const/4 v1, 0x3

    .line 108
    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lcom/google/mediapipe/glutil/EglManager;->createContext(Ljavax/microedition/khronos/egl/EGLContext;I[I)V

    .line 109
    iput v1, p0, Lcom/google/mediapipe/glutil/EglManager;->glVersion:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not create GLES 3 context: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EglManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1, v0, p2}, Lcom/google/mediapipe/glutil/EglManager;->createContext(Ljavax/microedition/khronos/egl/EGLContext;I[I)V

    .line 113
    iput v0, p0, Lcom/google/mediapipe/glutil/EglManager;->glVersion:I

    :goto_1
    return-void

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid parent context: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglInitialize failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglGetDisplay failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 396
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_0

    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": EGL error: 0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createContext(Ljavax/microedition/khronos/egl/EGLContext;I[I)V
    .locals 2
    .param p3    # [I
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
            "parentContext",
            "glVersion",
            "additionalConfigAttributes"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p2, p3}, Lcom/google/mediapipe/glutil/EglManager;->getConfig(I[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/google/mediapipe/glutil/EglManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz p3, :cond_3

    const/16 v0, 0x3098

    const/16 v1, 0x3038

    .line 231
    filled-new-array {v0, p2, v1}, [I

    move-result-object p2

    .line 232
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p3, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p1, :cond_1

    .line 233
    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 234
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    .line 235
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not create GL context: EGL error: 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x3006

    if-ne p0, p3, :cond_2

    .line 239
    const-string p0, ": parent context uses a different version of OpenGL"

    goto :goto_1

    .line 240
    :cond_2
    const-string p0, ""

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to find a suitable EGLConfig"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private egl10ContextFromEgl14Context(Landroid/opengl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 276
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 277
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3059

    .line 278
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    const/16 v3, 0x305a

    .line 279
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v3

    const/4 v4, 0x0

    .line 281
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v5

    .line 284
    invoke-virtual {v0, p1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x3056

    const/16 v7, 0x3038

    const/16 v8, 0x3057

    const/4 v9, 0x1

    .line 285
    filled-new-array {v8, v9, v6, v9, v7}, [I

    move-result-object v6

    .line 286
    invoke-direct {p0, v5}, Lcom/google/mediapipe/glutil/EglManager;->getThrowawayConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v7

    .line 288
    invoke-static {v1, v7, v6, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v4

    .line 289
    invoke-static {v5, v4, v4, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 292
    :goto_0
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    .line 294
    invoke-virtual {v0, p1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 295
    invoke-static {v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 297
    invoke-static {v5, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :cond_1
    return-object p0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "attribute",
            "defaultValue"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/mediapipe/glutil/EglManager;->singleIntArray:[I

    invoke-interface {v0, v1, p1, p2, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->singleIntArray:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    return p3
.end method

.method private getConfig(I[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "glVersion",
            "additionalConfigAttributes"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    move/from16 v2, p1

    if-ne v2, v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    move v13, v1

    const/4 v15, 0x5

    const/16 v16, 0x3038

    const/16 v2, 0x3024

    const/16 v3, 0x8

    const/16 v4, 0x3023

    const/16 v5, 0x8

    const/16 v6, 0x3022

    const/16 v7, 0x8

    const/16 v8, 0x3021

    const/16 v9, 0x8

    const/16 v10, 0x3025

    const/16 v11, 0x10

    const/16 v12, 0x3040

    const/16 v14, 0x3033

    .line 354
    filled-new-array/range {v2 .. v16}, [I

    move-result-object v1

    move-object/from16 v2, p2

    .line 358
    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/glutil/EglManager;->mergeAttribLists([I[I)[I

    move-result-object v1

    .line 361
    iget-object v8, v0, Lcom/google/mediapipe/glutil/EglManager;->singleIntArray:[I

    .line 362
    iget-object v2, v0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v9, 0x0

    .line 366
    aget v10, v8, v9

    if-lez v10, :cond_5

    .line 370
    new-array v11, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 371
    iget-object v2, v0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v4, v1

    move-object v5, v11

    move v6, v10

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v9

    :goto_1
    if-ge v1, v10, :cond_2

    .line 377
    aget-object v2, v11, v1

    const/16 v3, 0x3024

    .line 378
    invoke-direct {v0, v2, v3, v9}, Lcom/google/mediapipe/glutil/EglManager;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v3

    const/16 v4, 0x3023

    .line 379
    invoke-direct {v0, v2, v4, v9}, Lcom/google/mediapipe/glutil/EglManager;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    const/16 v5, 0x3022

    .line 380
    invoke-direct {v0, v2, v5, v9}, Lcom/google/mediapipe/glutil/EglManager;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v6, 0x3021

    .line 381
    invoke-direct {v0, v2, v6, v9}, Lcom/google/mediapipe/glutil/EglManager;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    if-ne v4, v7, :cond_1

    if-ne v5, v7, :cond_1

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 388
    aget-object v2, v11, v9

    :cond_3
    return-object v2

    .line 372
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match requested attributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getThrowawayConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    const/4 v0, 0x5

    const/16 v1, 0x3038

    const/16 v2, 0x3033

    .line 304
    filled-new-array {v2, v0, v1}, [I

    move-result-object v4

    const/4 v0, 0x1

    .line 307
    new-array v0, v0, [Landroid/opengl/EGLConfig;

    .line 308
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->singleIntArray:[I

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, v0

    move-object v9, p0

    .line 309
    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 312
    aget p0, p0, p1

    if-lez p0, :cond_0

    .line 315
    aget-object p0, v0, p1

    return-object p0

    .line 313
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No configs match requested attributes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private grabContextVariants()V
    .locals 7

    .line 252
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    .line 255
    iget-object v3, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x305a

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 258
    iget-object v4, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v4, :cond_0

    const/4 v4, 0x1

    .line 259
    invoke-virtual {p0, v4, v4}, Lcom/google/mediapipe/glutil/EglManager;->createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    .line 260
    invoke-virtual {p0, v4, v4}, Lcom/google/mediapipe/glutil/EglManager;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 263
    :goto_0
    invoke-static {}, Lcom/google/mediapipe/framework/Compat;->getCurrentNativeEGLContext()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/mediapipe/glutil/EglManager;->nativeEglContext:J

    .line 265
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/google/mediapipe/glutil/EglManager;->egl14Context:Landroid/opengl/EGLContext;

    .line 268
    iget-object v5, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v5, :cond_1

    .line 269
    iget-object v5, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5, v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 271
    invoke-virtual {p0, v4}, Lcom/google/mediapipe/glutil/EglManager;->releaseSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_1
    return-void
.end method

.method private mergeAttribLists([I[I)[I
    .locals 7
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list1",
            "list2"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 326
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 327
    filled-new-array {p1, p2}, [[I

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/16 v1, 0x3038

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    move v4, p2

    .line 328
    :goto_1
    array-length v5, v3

    div-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    mul-int/lit8 v5, v4, 0x2

    .line 329
    aget v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    .line 330
    aget v5, v3, v5

    if-ne v6, v1, :cond_1

    goto :goto_2

    .line 334
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p1

    mul-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    .line 339
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v2, p2, 0x1

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    goto :goto_3

    .line 343
    :cond_4
    aput v1, p1, p2

    return-object p1
.end method


# virtual methods
.method public createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 3
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

    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    .line 194
    filled-new-array {v2, p1, v0, p2, v1}, [I

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p2, v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 196
    const-string p2, "eglCreatePbufferSurface"

    invoke-direct {p0, p2}, Lcom/google/mediapipe/glutil/EglManager;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    .line 198
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "surface was null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createWindowSurface(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 166
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid surface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0x3038

    .line 174
    filled-new-array {v0}, [I

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/mediapipe/glutil/EglManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 176
    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 177
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/google/mediapipe/glutil/EglManager;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "surface was null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public getEgl14Context()Landroid/opengl/EGLContext;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl14Context:Landroid/opengl/EGLContext;

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/google/mediapipe/glutil/EglManager;->grabContextVariants()V

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl14Context:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getGlMajorVersion()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/google/mediapipe/glutil/EglManager;->glVersion:I

    return p0
.end method

.method public getNativeContext()J
    .locals 4

    .line 124
    iget-wide v0, p0, Lcom/google/mediapipe/glutil/EglManager;->nativeEglContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/mediapipe/glutil/EglManager;->grabContextVariants()V

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/google/mediapipe/glutil/EglManager;->nativeEglContext:J

    return-wide v0
.end method

.method public makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawSurface",
            "readSurface"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p2, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglMakeCurrent failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeNothingCurrent()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, p0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 210
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 211
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 214
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 215
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method public releaseSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglSurface"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/mediapipe/glutil/EglManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p0, p0, Lcom/google/mediapipe/glutil/EglManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, p0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
