.class public Lcn/nubia/redmagickyi/user/client/AccountClient;
.super Ljava/lang/Object;
.source "AccountClient.java"


# static fields
.field public static mAccountEnableLog:Z = false

.field public static mClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "nubia"

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p0

    sput-object p0, Lcn/nubia/redmagickyi/user/client/AccountClient;->mClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 1

    .line 20
    sget-object v0, Lcn/nubia/redmagickyi/user/client/AccountClient;->mClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/user/client/AccountClient;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/client/AccountClient;-><init>(Landroid/content/Context;)V

    .line 23
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/user/client/AccountClient;->mClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    return-object p0
.end method
