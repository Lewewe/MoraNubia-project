.class public Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;
.super Ljava/lang/Object;
.source "ParamSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;
    }
.end annotation


# static fields
.field public static final FF_MPEG4_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final FF_MPEG4_CSD_1:Ljava/nio/ByteBuffer;

.field public static final FF_MPEG4_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

.field public static final MTK_HIGH_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final MTK_HIGH_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

.field public static final MTK_MAIN_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final MTK_MAIN_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

.field public static final MTK_SLOW_MOTION_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_SLOW_MOTION_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

.field public static final QCOM_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_0_SDM:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1_SDM:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1_SMSNILE:Ljava/nio/ByteBuffer;

.field public static final QCOM_PARAM_SDM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

.field public static final QCOM_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

.field public static final QCOM_PARAM_SMSNILE_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x7

    .line 13
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    .line 14
    new-array v3, v2, [B

    fill-array-data v3, :array_1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sput-object v3, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v4, 0x17

    .line 15
    new-array v4, v4, [B

    fill-array-data v4, :array_2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sput-object v4, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_CSD_0_SDM:Ljava/nio/ByteBuffer;

    const/16 v5, 0x9

    .line 17
    new-array v6, v5, [B

    fill-array-data v6, :array_3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sput-object v6, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_CSD_1_SDM:Ljava/nio/ByteBuffer;

    .line 18
    new-array v7, v5, [B

    fill-array-data v7, :array_4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sput-object v7, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_CSD_1_SMSNILE:Ljava/nio/ByteBuffer;

    .line 19
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_MAIN_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    .line 20
    new-array v8, v2, [B

    fill-array-data v8, :array_6

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sput-object v8, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_MAIN_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v9, 0xb

    .line 22
    new-array v9, v9, [B

    fill-array-data v9, :array_7

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sput-object v9, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_HIGH_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    .line 24
    new-array v2, v2, [B

    fill-array-data v2, :array_8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_HIGH_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

    .line 25
    new-array v5, v5, [B

    fill-array-data v5, :array_9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sput-object v5, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_SLOW_MOTION_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v10, 0x1a

    .line 26
    new-array v10, v10, [B

    fill-array-data v10, :array_a

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sput-object v10, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->FF_MPEG4_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    const/4 v11, 0x4

    .line 28
    new-array v11, v11, [B

    fill-array-data v11, :array_b

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sput-object v11, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->FF_MPEG4_CSD_1:Ljava/nio/ByteBuffer;

    .line 29
    new-instance v12, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v12, v1, v3}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v12, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 30
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v1, v4, v6}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_PARAM_SDM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 31
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v1, v4, v7}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_PARAM_SMSNILE_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 32
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v1, v0, v8}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v0, v9, v2}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 34
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v0, v9, v5}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_SLOW_MOTION_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v0, v10, v11}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->FF_MPEG4_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0x6t
        -0x1et
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x64t
        0x0t
        0x28t
        -0x54t
        -0x4ct
        0x3t
        -0x40t
        0x11t
        0x3ft
        0x2ct
        -0x54t
        0x14t
        0x18t
        0x14t
        0x1bt
        0x42t
        -0x7ct
        -0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x12t
        0x6t
        -0x1et
        -0x40t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x12t
        0x6t
        -0xet
        -0x40t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x36t
        0x43t
        -0x38t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x64t
        0x0t
        0x29t
        -0x54t
        0x1bt
        0x1at
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x16t
        0x43t
        -0x35t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x7t
        0x8t
        0x3ct
        -0x50t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x50t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x4bt
        -0x77t
        0x13t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x20t
        0x0t
        -0x3ct
        -0x73t
        -0x78t
        0x0t
        -0xbt
        0x3ct
    .end array-data

    nop

    :array_b
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamSet(Landroid/content/Context;Landroid/net/Uri;)Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;
    .locals 3

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>()V

    .line 55
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v1, p0, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 58
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->getParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Landroid/media/MediaExtractor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    .line 63
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 64
    throw p0
.end method

.method public static getParamSet(Ljava/lang/String;)Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;
    .locals 2

    .line 69
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;-><init>()V

    .line 70
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 72
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 73
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->getParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Landroid/media/MediaExtractor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 76
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    .line 78
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 79
    throw p0
.end method

.method private static getParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Landroid/media/MediaExtractor;)V
    .locals 4

    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 85
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 86
    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const-string p1, "csd-0"

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 92
    :cond_0
    new-array p1, v2, [B

    fill-array-data p1, :array_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 94
    :goto_1
    const-string p1, "csd-1"

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 97
    :cond_1
    new-array p1, v2, [B

    fill-array-data p1, :array_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    nop

    :array_0
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data
.end method

.method public static isAVCAccutateTrimSupport(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 2

    .line 152
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 153
    const-string v1, "msm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isQcomParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0

    .line 156
    :cond_0
    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isMTKParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isMTKHighProfileParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 140
    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method

.method public static isMTKMainProfileParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 136
    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method

.method public static isMTKParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 144
    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMTKSlowMotionParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 148
    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->MTK_SLOW_MOTION_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method

.method public static isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 108
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 115
    iget-object v2, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 119
    :goto_0
    iget-object v3, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    iget-object v4, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, p0, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 122
    iget-object p0, p1, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static isQcomParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 130
    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_PARAM_SDM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 131
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->QCOM_PARAM_SMSNILE_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    .line 132
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTimeLapseTrimSupport(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 165
    sget-object v0, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->FF_MPEG4_PARAM_SET:Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isParamSetSame(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method
