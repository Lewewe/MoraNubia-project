.class public Lcn/nubia/upgrade/constants/a;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-boolean v0, Lcn/nubia/upgrade/constants/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://ausp-test.nubia.com/service/get_version.do"

    return-object v0

    :cond_0
    const-string v0, "https://ausp.server.nubia.cn/service/get_version.do"

    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/nubia/upgrade/constants/a;->a:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcn/nubia/upgrade/constants/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://ausp-test.nubia.com/service/upgrade_report.do"

    return-object v0

    :cond_0
    const-string v0, "https://ausp.server.nubia.cn/service/upgrade_report.do"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcn/nubia/upgrade/constants/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://ausp-test.nubia.com/service/get_version_with_config.do"

    return-object v0

    :cond_0
    const-string v0, "https://ausp.server.nubia.cn/service/get_version_with_config.do"

    return-object v0
.end method
