.class public final enum Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;
.super Ljava/lang/Enum;
.source "EnvironmentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

.field public static final enum RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

.field public static final enum TEST:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;
    .locals 2

    .line 5
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->TEST:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    const-string v1, "RELEASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    const-string v1, "TEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->TEST:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    .line 5
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->$values()[Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->$VALUES:[Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;
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
    const-class v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;
    .locals 1

    .line 5
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->$VALUES:[Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    return-object v0
.end method
