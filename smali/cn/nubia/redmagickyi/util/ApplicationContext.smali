.class public Lcn/nubia/redmagickyi/util/ApplicationContext;
.super Ljava/lang/Object;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;
    }
.end annotation


# static fields
.field private static sContext:Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;

.field private static sPackageName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static sVersionCode:I

.field private static sVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sContext:Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 39
    sget v0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sVersionCode:I

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static killProcess(I)V
    .locals 1

    .line 55
    sget-object v0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sContext:Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;->onProcesskilled(I)V

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static setContext(Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;)V
    .locals 0

    .line 19
    sput-object p0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sContext:Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;

    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 27
    sput-object p0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sPackageName:Ljava/lang/String;

    return-void
.end method

.method public static setProcessName(Ljava/lang/String;)V
    .locals 0

    .line 35
    sput-object p0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sProcessName:Ljava/lang/String;

    return-void
.end method

.method public static setVersionCode(I)V
    .locals 0

    .line 43
    sput p0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sVersionCode:I

    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 51
    sput-object p0, Lcn/nubia/redmagickyi/util/ApplicationContext;->sVersionName:Ljava/lang/String;

    return-void
.end method
