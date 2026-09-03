.class public Lcom/google/mediapipe/glutil/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final ATTRIB_POSITION:I = 0x1

.field private static final ATTRIB_TEXTURE_COORDINATE:I = 0x2

.field private static final FLIPPED_TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final TAG:Ljava/lang/String; = "TextureRenderer"

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;


# instance fields
.field private flipY:Z

.field private frameUniform:I

.field private program:I

.field private textureTransformMatrix:[F

.field private textureTransformUniform:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 25
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 26
    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/glutil/TextureRenderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 33
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 34
    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/glutil/TextureRenderer;->FLIPPED_TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->program:I

    const/16 v0, 0x10

    .line 48
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->textureTransformMatrix:[F

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 125
    iget p0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->program:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public render(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureName"
        }
    .end annotation

    const/16 v0, 0x4000

    .line 79
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x84c0

    .line 81
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 82
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0xde1

    .line 83
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 84
    const-string p1, "glBindTexture"

    invoke-static {p1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    .line 85
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 86
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 87
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 88
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 89
    const-string v1, "glTexParameteri"

    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->program:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 92
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 93
    iget v1, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->frameUniform:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 94
    const-string v1, "glUniform1i"

    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 95
    iget v1, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->textureTransformUniform:I

    iget-object v3, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->textureTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 96
    const-string v1, "glUniformMatrix4fv"

    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 97
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v9, 0x0

    .line 98
    sget-object v10, Lcom/google/mediapipe/glutil/CommonShaders;->SQUARE_VERTICES:Ljava/nio/FloatBuffer;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x2

    .line 101
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 108
    iget-boolean p0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->flipY:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/mediapipe/glutil/TextureRenderer;->FLIPPED_TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/glutil/TextureRenderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    :goto_0
    move-object v8, p0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 102
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 109
    const-string p0, "program setup"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p0, 0x5

    const/4 v1, 0x4

    .line 111
    invoke-static {p0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 112
    const-string p0, "glDrawArrays"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    invoke-static {p1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flip"
        }
    .end annotation

    .line 70
    iput-boolean p1, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->flipY:Z

    return-void
.end method

.method public setup()V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "texture_coordinate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "uniform mat4 texture_transform;\nattribute vec4 position;\nattribute mediump vec4 texture_coordinate;\nvarying mediump vec2 sample_coordinate;\n\nvoid main() {\n  gl_Position = position;\n  sample_coordinate = (texture_transform * texture_coordinate).xy;\n}"

    const-string v2, "varying mediump vec2 sample_coordinate;\nuniform sampler2D video_frame;\n\nvoid main() {\n  gl_FragColor = texture2D(video_frame, sample_coordinate);\n}"

    .line 57
    invoke-static {v1, v2, v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->program:I

    .line 59
    const-string v1, "video_frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->frameUniform:I

    .line 60
    iget v0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->program:I

    const-string v1, "texture_transform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->textureTransformUniform:I

    .line 61
    const-string v0, "glGetUniformLocation"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/google/mediapipe/glutil/TextureRenderer;->textureTransformMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method
