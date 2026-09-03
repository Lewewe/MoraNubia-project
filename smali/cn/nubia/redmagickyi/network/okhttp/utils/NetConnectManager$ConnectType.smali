.class public final enum Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
.super Ljava/lang/Enum;
.source "NetConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

.field public static final enum Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

.field public static final enum None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

.field public static final enum Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 3

    .line 46
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    sget-object v2, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    const-string v1, "Mobile"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    const-string v1, "Wifi"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "None"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->$values()[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->$VALUES:[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->value:I

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->value:I

    return p0
.end method

.method public static convertType(I)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 5

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->values()[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    iget v4, v3, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    const-class v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 1

    .line 46
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->$VALUES:[Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object v0
.end method
