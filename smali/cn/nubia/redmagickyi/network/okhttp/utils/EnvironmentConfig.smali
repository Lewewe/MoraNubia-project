.class public Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;
.super Ljava/lang/Object;
.source "EnvironmentConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;
    }
.end annotation


# static fields
.field private static environment:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->environment:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnv()Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;
    .locals 1

    .line 18
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->environment:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    return-object v0
.end method

.method public static setEnv(Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;)V
    .locals 0

    .line 14
    sput-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->environment:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    return-void
.end method
