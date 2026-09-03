.class public Lcom/google/mediapipe/components/GlSurfaceViewRenderer;
.super Ljava/lang/Object;
.source "GlSurfaceViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final ATTRIB_POSITION:I = 0x1

.field private static final ATTRIB_TEXTURE_COORDINATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DemoRenderer"


# instance fields
.field private alignmentHorizontal:F

.field private alignmentVertical:F

.field private frameHeight:I

.field private frameUniform:I

.field private frameWidth:I

.field private final nextFrame:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/mediapipe/framework/TextureFrame;",
            ">;"
        }
    .end annotation
.end field

.field private program:I

.field private surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private textureTarget:I

.field private textureTransformMatrix:[F

.field private textureTransformUniform:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameWidth:I

    .line 54
    iput v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameHeight:I

    .line 55
    iput v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->program:I

    const v0, 0x8d65

    .line 57
    iput v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 60
    iput v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->alignmentHorizontal:F

    .line 61
    iput v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->alignmentVertical:F

    const/16 v0, 0x10

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformMatrix:[F

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->nextFrame:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private isExternalTexture()Z
    .locals 1

    .line 246
    iget p0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    const v0, 0x8d65

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected calculateTextureBoundary()[F
    .locals 5

    .line 159
    iget v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameWidth:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceWidth:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 160
    :goto_0
    iget v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameHeight:I

    if-lez v0, :cond_1

    iget v3, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceHeight:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 165
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v2, v0

    div-float/2addr v3, v0

    sub-float v0, v1, v2

    .line 171
    iget v4, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->alignmentHorizontal:F

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    sub-float/2addr v1, v3

    .line 173
    iget p0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->alignmentVertical:F

    mul-float/2addr v1, p0

    add-float/2addr v3, v1

    const/4 p0, 0x4

    .line 176
    new-array p0, p0, [F

    const/4 v4, 0x0

    aput v0, p0, v4

    const/4 v0, 0x1

    aput v2, p0, v0

    const/4 v0, 0x2

    aput v1, p0, v0

    const/4 v0, 0x3

    aput v3, p0, v0

    return-object p0
.end method

.method protected flush(Lcom/google/mediapipe/framework/TextureFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->renderFrame()Lcom/google/mediapipe/framework/TextureFrame;

    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->flush(Lcom/google/mediapipe/framework/TextureFrame;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gl",
            "width",
            "height"
        }
    .end annotation

    .line 91
    iput p2, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceWidth:I

    .line 92
    iput p3, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceHeight:I

    const/4 p0, 0x0

    .line 93
    invoke-static {p0, p0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gl",
            "config"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 71
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x1

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "position"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "texture_coordinate"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "external texture: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->isExternalTexture()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DemoRenderer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->isExternalTexture()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    const-string p2, "#extension GL_OES_EGL_image_external : require\nvarying mediump vec2 sample_coordinate;\nuniform samplerExternalOES video_frame;\n\nvoid main() {\n  gl_FragColor = texture2D(video_frame, sample_coordinate);\n}"

    goto :goto_0

    .line 80
    :cond_1
    const-string p2, "varying mediump vec2 sample_coordinate;\nuniform sampler2D video_frame;\n\nvoid main() {\n  gl_FragColor = texture2D(video_frame, sample_coordinate);\n}"

    .line 76
    :goto_0
    const-string v0, "uniform mat4 texture_transform;\nattribute vec4 position;\nattribute mediump vec4 texture_coordinate;\nvarying mediump vec2 sample_coordinate;\n\nvoid main() {\n  gl_Position = position;\n  sample_coordinate = (texture_transform * texture_coordinate).xy;\n}"

    invoke-static {v0, p2, p1}, Lcom/google/mediapipe/glutil/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->program:I

    .line 82
    const-string p2, "video_frame"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameUniform:I

    .line 83
    iget p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->program:I

    const-string p2, "texture_transform"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformUniform:I

    .line 84
    const-string p0, "glGetUniformLocation"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    .line 86
    invoke-static {p1, p1, p1, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method protected renderFrame()Lcom/google/mediapipe/framework/TextureFrame;
    .locals 17

    move-object/from16 v0, p0

    .line 98
    iget-object v1, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->nextFrame:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/TextureFrame;

    const/16 v3, 0x4000

    .line 100
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 101
    const-string v3, "glClear"

    invoke-static {v3}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 103
    iget-object v3, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const v2, 0x84c0

    .line 107
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 108
    const-string v2, "glActiveTexture"

    invoke-static {v2}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 111
    iget-object v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformMatrix:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0

    .line 113
    :cond_1
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    invoke-interface {v1}, Lcom/google/mediapipe/framework/TextureFrame;->getTextureName()I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 116
    :goto_0
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 117
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    const/16 v3, 0x2800

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 118
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 119
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    const/16 v3, 0x2803

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 120
    const-string v2, "texture setup"

    invoke-static {v2}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 122
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 123
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameUniform:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 124
    iget v2, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformUniform:I

    iget-object v4, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformMatrix:[F

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 125
    const-string v2, "glUniformMatrix4fv"

    invoke-static {v2}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 126
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v10, 0x0

    .line 127
    sget-object v11, Lcom/google/mediapipe/glutil/CommonShaders;->SQUARE_VERTICES:Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->calculateTextureBoundary()[F

    move-result-object v2

    .line 131
    aget v4, v2, v3

    .line 132
    aget v6, v2, v5

    .line 133
    aget v8, v2, v7

    const/4 v9, 0x3

    .line 134
    aget v2, v2, v9

    const/16 v10, 0x8

    .line 137
    new-array v10, v10, [F

    aput v4, v10, v3

    aput v8, v10, v5

    aput v6, v10, v7

    aput v8, v10, v9

    const/4 v5, 0x4

    aput v4, v10, v5

    const/4 v4, 0x5

    aput v2, v10, v4

    const/4 v8, 0x6

    aput v6, v10, v8

    const/4 v6, 0x7

    aput v2, v10, v6

    .line 138
    invoke-static {v10}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v16

    .line 143
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/16 v13, 0x1406

    .line 144
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 146
    const-string v2, "program setup"

    invoke-static {v2}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 148
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 149
    const-string v2, "glDrawArrays"

    invoke-static {v2}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget v0, v0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 151
    const-string v0, "unbind surfaceTexture"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    return-object v1
.end method

.method public setAlignment(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "horizontal",
            "vertical"
        }
    .end annotation

    .line 241
    iput p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->alignmentHorizontal:F

    .line 242
    iput p2, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->alignmentVertical:F

    return-void
.end method

.method public setFrameSize(II)V
    .locals 0
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

    .line 231
    iput p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameWidth:I

    .line 232
    iput p2, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->frameHeight:I

    return-void
.end method

.method public setNextFrame(Lcom/google/mediapipe/framework/TextureFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTransformMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->nextFrame:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 225
    invoke-interface {v0}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    :cond_1
    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->isExternalTexture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->nextFrame:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    .line 208
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "to use a SurfaceTexture, the texture target must be GL_TEXTURE_EXTERNAL_OES"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTextureTarget(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->program:I

    if-nez v0, :cond_0

    .line 203
    iput p1, p0, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->textureTarget:I

    return-void

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setTextureTarget must be called before the surface is created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
