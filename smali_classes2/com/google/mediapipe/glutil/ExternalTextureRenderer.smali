.class public Lcom/google/mediapipe/glutil/ExternalTextureRenderer;
.super Ljava/lang/Object;
.source "ExternalTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;
    }
.end annotation


# static fields
.field private static final ATTRIB_POSITION:I = 0x1

.field private static final ATTRIB_TEXTURE_COORDINATE:I = 0x2

.field private static final BOTTOM_LEFT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

.field private static final BOTTOM_RIGHT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

.field private static final FLIPPED_TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final POSITION_VERTICIES:[Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

.field private static final POSITION_VERTICIES_0:Ljava/nio/FloatBuffer;

.field private static final POSITION_VERTICIES_180:Ljava/nio/FloatBuffer;

.field private static final POSITION_VERTICIES_270:Ljava/nio/FloatBuffer;

.field private static final POSITION_VERTICIES_90:Ljava/nio/FloatBuffer;

.field private static final TAG:Ljava/lang/String; = "ExternalTextureRend"

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final TOP_LEFT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

.field private static final TOP_RIGHT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;


# instance fields
.field private flipY:Z

.field private frameUniform:I

.field private program:I

.field private rotation:I

.field private textureTransformMatrix:[F

.field private textureTransformUniform:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    .line 33
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 34
    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 41
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 42
    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->FLIPPED_TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 48
    new-instance v0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;-><init>(FF)V

    sput-object v0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->BOTTOM_LEFT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    .line 49
    new-instance v2, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;-><init>(FF)V

    sput-object v2, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->BOTTOM_RIGHT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    .line 50
    new-instance v4, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    invoke-direct {v4, v1, v3}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;-><init>(FF)V

    sput-object v4, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->TOP_LEFT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    .line 51
    new-instance v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    invoke-direct {v1, v3, v3}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;-><init>(FF)V

    sput-object v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->TOP_RIGHT:Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    const/4 v3, 0x4

    .line 52
    new-array v3, v3, [Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v2, 0x2

    aput-object v4, v3, v2

    const/4 v4, 0x3

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES:[Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;

    .line 55
    invoke-static {v3, v5, v0, v2, v4}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->fb([Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;IIII)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_0:Ljava/nio/FloatBuffer;

    .line 56
    invoke-static {v3, v2, v5, v4, v0}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->fb([Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;IIII)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_90:Ljava/nio/FloatBuffer;

    .line 57
    invoke-static {v3, v4, v2, v0, v5}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->fb([Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;IIII)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_180:Ljava/nio/FloatBuffer;

    .line 58
    invoke-static {v3, v0, v4, v5, v2}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->fb([Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;IIII)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_270:Ljava/nio/FloatBuffer;

    return-void

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
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->program:I

    const/16 v1, 0x10

    .line 67
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->textureTransformMatrix:[F

    .line 69
    iput v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->rotation:I

    return-void
.end method

.method private static fb([Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;IIII)Ljava/nio/FloatBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "i0",
            "i1",
            "i2",
            "i3"
        }
    .end annotation

    .line 181
    aget-object v0, p0, p1

    iget v0, v0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->x:F

    aget-object p1, p0, p1

    iget p1, p1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->y:F

    aget-object v1, p0, p2

    iget v1, v1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->x:F

    aget-object p2, p0, p2

    iget p2, p2, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->y:F

    aget-object v2, p0, p3

    iget v2, v2, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->x:F

    aget-object p3, p0, p3

    iget p3, p3, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->y:F

    aget-object v3, p0, p4

    iget v3, v3, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->x:F

    aget-object p0, p0, p4

    iget p0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->y:F

    const/16 p4, 0x8

    new-array p4, p4, [F

    const/4 v4, 0x0

    aput v0, p4, v4

    const/4 v0, 0x1

    aput p1, p4, v0

    const/4 p1, 0x2

    aput v1, p4, p1

    const/4 p1, 0x3

    aput p2, p4, p1

    const/4 p1, 0x4

    aput v2, p4, p1

    const/4 p1, 0x5

    aput p3, p4, p1

    const/4 p1, 0x6

    aput v3, p4, p1

    const/4 p1, 0x7

    aput p0, p4, p1

    invoke-static {p4}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getPositionVerticies()Ljava/nio/FloatBuffer;
    .locals 1

    .line 167
    iget p0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->rotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 176
    sget-object p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_0:Ljava/nio/FloatBuffer;

    return-object p0

    .line 173
    :cond_0
    sget-object p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_270:Ljava/nio/FloatBuffer;

    return-object p0

    .line 171
    :cond_1
    sget-object p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_180:Ljava/nio/FloatBuffer;

    return-object p0

    .line 169
    :cond_2
    sget-object p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->POSITION_VERTICIES_90:Ljava/nio/FloatBuffer;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 163
    iget p0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->program:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public render(Landroid/graphics/SurfaceTexture;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    const/16 v0, 0x4000

    .line 112
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x84c0

    .line 114
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 115
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 117
    iget-object v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->textureTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const p1, 0x8d65

    const/16 v0, 0x2801

    const/16 v1, 0x2601

    .line 118
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 120
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v1, 0x812f

    .line 122
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 124
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 126
    const-string v0, "glTexParameteri"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->frameUniform:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 131
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->textureTransformUniform:I

    iget-object v2, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->textureTransformMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 133
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 134
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v8, 0x0

    .line 136
    invoke-direct {p0}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->getPositionVerticies()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    .line 135
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x2

    .line 138
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 145
    iget-boolean p0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->flipY:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->FLIPPED_TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    :goto_0
    move-object v7, p0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 139
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 146
    const-string p0, "program setup"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    .line 148
    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 149
    const-string p0, "glDrawArrays"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 151
    const-string p0, "glBindTexture"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

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

    .line 92
    iput-boolean p1, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->flipY:Z

    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 101
    iput p1, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->rotation:I

    return-void
.end method

.method public setup()V
    .locals 3

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "texture_coordinate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "uniform mat4 texture_transform;\nattribute vec4 position;\nattribute mediump vec4 texture_coordinate;\nvarying mediump vec2 sample_coordinate;\n\nvoid main() {\n  gl_Position = position;\n  sample_coordinate = (texture_transform * texture_coordinate).xy;\n}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nvarying mediump vec2 sample_coordinate;\nuniform samplerExternalOES video_frame;\n\nvoid main() {\n  gl_FragColor = texture2D(video_frame, sample_coordinate);\n}"

    .line 77
    invoke-static {v1, v2, v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->program:I

    .line 81
    const-string v1, "video_frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->frameUniform:I

    .line 82
    iget v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->program:I

    const-string v1, "texture_transform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->textureTransformUniform:I

    .line 83
    const-string p0, "glGetUniformLocation"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
