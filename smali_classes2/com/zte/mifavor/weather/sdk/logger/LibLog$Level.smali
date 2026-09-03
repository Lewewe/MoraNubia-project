.class public final enum Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;
.super Ljava/lang/Enum;
.source "LibLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/logger/LibLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum ASSERT:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum DEBUG:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum ERROR:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum INFO:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum VERBOSE:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum WARNING:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

.field public static final enum WTF:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;


# direct methods
.method private static synthetic $values()[Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;
    .locals 7

    .line 13
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->VERBOSE:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->DEBUG:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    sget-object v2, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->INFO:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    sget-object v3, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->WARNING:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    sget-object v4, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ERROR:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    sget-object v5, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ASSERT:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    sget-object v6, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->WTF:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    filled-new-array/range {v0 .. v6}, [Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->VERBOSE:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 17
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->DEBUG:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 19
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->INFO:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 21
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "WARNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->WARNING:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 23
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ERROR:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 25
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "ASSERT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ASSERT:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 27
    new-instance v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    const-string v1, "WTF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->WTF:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    .line 13
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->$values()[Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->$VALUES:[Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    const-class v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    return-object p0
.end method

.method public static values()[Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;
    .locals 1

    .line 13
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->$VALUES:[Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0}, [Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    return-object v0
.end method
