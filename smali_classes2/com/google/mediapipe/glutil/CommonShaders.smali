.class public Lcom/google/mediapipe/glutil/CommonShaders;
.super Ljava/lang/Object;
.source "CommonShaders.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "varying mediump vec2 sample_coordinate;\nuniform sampler2D video_frame;\n\nvoid main() {\n  gl_FragColor = texture2D(video_frame, sample_coordinate);\n}"

.field public static final FRAGMENT_SHADER_EXTERNAL:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nvarying mediump vec2 sample_coordinate;\nuniform samplerExternalOES video_frame;\n\nvoid main() {\n  gl_FragColor = texture2D(video_frame, sample_coordinate);\n}"

.field public static final ROTATED_SQUARE_VERTICES:Ljava/nio/FloatBuffer;

.field public static final SQUARE_VERTICES:Ljava/nio/FloatBuffer;

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 texture_transform;\nattribute vec4 position;\nattribute mediump vec4 texture_coordinate;\nvarying mediump vec2 sample_coordinate;\n\nvoid main() {\n  gl_Position = position;\n  sample_coordinate = (texture_transform * texture_coordinate).xy;\n}"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 64
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 65
    invoke-static {v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/glutil/CommonShaders;->SQUARE_VERTICES:Ljava/nio/FloatBuffer;

    .line 74
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 75
    invoke-static {v0}, Lcom/google/mediapipe/glutil/ShaderUtil;->floatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/glutil/CommonShaders;->ROTATED_SQUARE_VERTICES:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
