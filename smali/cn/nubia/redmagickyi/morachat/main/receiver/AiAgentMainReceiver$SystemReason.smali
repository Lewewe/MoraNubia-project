.class public final enum Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;
.super Ljava/lang/Enum;
.source "AiAgentMainReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

.field public static final enum DREAM:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

.field public static final enum HOME:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

.field public static final enum LOCK:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

.field public static final enum LONG_POWER:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

.field public static final enum RECENT:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;
    .locals 5

    .line 192
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LOCK:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->DREAM:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->HOME:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->RECENT:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LONG_POWER:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 194
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    const/4 v1, 0x0

    const-string v2, "lock"

    const-string v3, "LOCK"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LOCK:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    .line 196
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    const/4 v1, 0x1

    const-string v2, "dream"

    const-string v3, "DREAM"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->DREAM:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    .line 198
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    const/4 v1, 0x2

    const-string v2, "homekey"

    const-string v3, "HOME"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->HOME:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    .line 200
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    const/4 v1, 0x3

    const-string v2, "recentapps"

    const-string v3, "RECENT"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->RECENT:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    .line 202
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    const/4 v1, 0x4

    const-string v2, "globalactions"

    const-string v3, "LONG_POWER"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LONG_POWER:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    .line 192
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->$values()[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 206
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 192
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;
    .locals 1

    .line 192
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    return-object v0
.end method
