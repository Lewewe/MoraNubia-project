.class public Lcom/google/mediapipe/glutil/ShaderUtil;
.super Ljava/lang/Object;
.source "ShaderUtil.java"


# static fields
.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/glutil/ShaderUtil;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": GL error: 0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 4
    .param p2    # Ljava/util/Map;
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
            "vertexSource",
            "fragmentSource",
            "attributeLocations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const v0, 0x8b31

    .line 67
    invoke-static {v0, p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 71
    invoke-static {v1, p1}, Lcom/google/mediapipe/glutil/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 76
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    .line 78
    sget-object v2, Lcom/google/mediapipe/glutil/ShaderUtil;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v2}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v3, "Could not create program"

    invoke-interface {v2, v3}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 81
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    if-eqz p2, :cond_3

    .line 84
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 90
    new-array p1, p0, [I

    const p2, 0x8b82

    .line 91
    invoke-static {v1, p2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 92
    aget p1, p1, v0

    if-eq p1, p0, :cond_4

    .line 93
    sget-object p0, Lcom/google/mediapipe/glutil/ShaderUtil;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string p1, "Could not link program: %s"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method

.method public static createRgbaTexture(II)I
    .locals 13
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

    const/4 v0, 0x0

    .line 105
    filled-new-array {v0}, [I

    move-result-object v1

    const/4 v2, 0x1

    .line 106
    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v2, 0x84c0

    .line 108
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 109
    aget v2, v1, v0

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move v7, p0

    move v8, p1

    .line 110
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 119
    const-string p0, "glTexImage2D"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/16 p0, 0x2801

    const/16 p1, 0x2601

    .line 120
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2800

    .line 121
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2802

    const p1, 0x812f

    .line 122
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    .line 123
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 124
    const-string p0, "texture setup"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 125
    aget p0, v1, v0

    return p0
.end method

.method public static createRgbaTexture(Landroid/graphics/Bitmap;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    filled-new-array {v0}, [I

    move-result-object v1

    const/4 v2, 0x1

    .line 135
    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v2, 0x84c0

    .line 137
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 138
    aget v2, v1, v0

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 139
    invoke-static {v3, v0, p0, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 140
    const-string p0, "texImage2D"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const/16 p0, 0x2801

    const/16 v2, 0x2601

    .line 141
    invoke-static {v3, p0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2800

    .line 142
    invoke-static {v3, p0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2802

    const v2, 0x812f

    .line 143
    invoke-static {v3, p0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    .line 144
    invoke-static {v3, p0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 145
    const-string p0, "texture setup"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 146
    aget p0, v1, v0

    return p0
.end method

.method public static varargs floatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 154
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 155
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 165
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shaderType",
            "source"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 42
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 43
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 44
    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 46
    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 47
    sget-object p1, Lcom/google/mediapipe/glutil/ShaderUtil;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p1}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "Could not compile shader %d: %s"

    .line 48
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-interface {p1, v1, p0, v3}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method
