.class public final enum Lcn/nubia/redmagickyi/util/AudioStreamType;
.super Ljava/lang/Enum;
.source "AudioStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/util/AudioStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/util/AudioStreamType;

.field public static final enum STREAM_ALARM:Lcn/nubia/redmagickyi/util/AudioStreamType;

.field public static final enum STREAM_ASSISTANT:Lcn/nubia/redmagickyi/util/AudioStreamType;

.field public static final enum STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;


# instance fields
.field public key:Ljava/lang/String;

.field public value:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/util/AudioStreamType;
    .locals 3

    .line 5
    sget-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    sget-object v1, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ALARM:Lcn/nubia/redmagickyi/util/AudioStreamType;

    sget-object v2, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ASSISTANT:Lcn/nubia/redmagickyi/util/AudioStreamType;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "STREAM_MUSIC"

    invoke-direct {v0, v3, v1, v3, v2}, Lcn/nubia/redmagickyi/util/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v3, "STREAM_ALARM"

    invoke-direct {v0, v3, v1, v3, v2}, Lcn/nubia/redmagickyi/util/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ALARM:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 11
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v1, 0x2

    const/16 v2, 0xb

    const-string v3, "STREAM_ASSISTANT"

    invoke-direct {v0, v3, v1, v3, v2}, Lcn/nubia/redmagickyi/util/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ASSISTANT:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 5
    invoke-static {}, Lcn/nubia/redmagickyi/util/AudioStreamType;->$values()[Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->$VALUES:[Lcn/nubia/redmagickyi/util/AudioStreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcn/nubia/redmagickyi/util/AudioStreamType;->value:I

    return-void
.end method

.method public static findStreamTypeByKey(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/AudioStreamType;
    .locals 5

    .line 22
    invoke-static {}, Lcn/nubia/redmagickyi/util/AudioStreamType;->values()[Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    iget-object v4, v3, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/AudioStreamType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/AudioStreamType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/util/AudioStreamType;
    .locals 1

    .line 5
    sget-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->$VALUES:[Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/util/AudioStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/util/AudioStreamType;

    return-object v0
.end method
