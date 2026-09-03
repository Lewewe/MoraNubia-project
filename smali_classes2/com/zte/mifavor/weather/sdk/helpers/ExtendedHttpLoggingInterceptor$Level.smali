.class public final enum Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "ExtendedHttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

.field public static final enum BODY_WITH_HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;


# direct methods
.method private static synthetic $values()[Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;
    .locals 5

    .line 211
    sget-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->NONE:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    sget-object v1, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BASIC:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    sget-object v2, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    sget-object v3, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    sget-object v4, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY_WITH_HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 213
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->NONE:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 215
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BASIC:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 217
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 219
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 221
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    const-string v1, "BODY_WITH_HEADERS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY_WITH_HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 211
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->$values()[Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->$VALUES:[Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

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

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 211
    const-class v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;
    .locals 1

    .line 211
    sget-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->$VALUES:[Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    return-object v0
.end method
