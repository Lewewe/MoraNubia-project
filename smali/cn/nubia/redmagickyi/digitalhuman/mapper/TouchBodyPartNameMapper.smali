.class public Lcn/nubia/redmagickyi/digitalhuman/mapper/TouchBodyPartNameMapper;
.super Ljava/lang/Object;
.source "TouchBodyPartNameMapper.java"


# static fields
.field private static final PART_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TouchBodyPartNameMapper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tou"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "xiong"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "shou"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tui"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/TouchBodyPartNameMapper;->PART_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPartNameByAudioPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 18
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/TouchBodyPartNameMapper;->PART_NAMES:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :catch_0
    const-string p0, "TouchBodyPartNameMapper"

    const-string v0, "dismatch partName"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
