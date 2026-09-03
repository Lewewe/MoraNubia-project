.class public Lcom/zte/zteaccount/account/nubia/AccountClientHelper;
.super Ljava/lang/Object;
.source "AccountClientHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccountClient(Landroid/content/Context;Lcom/zte/aigc/common/ServerType;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 7

    .line 14
    invoke-static {}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->release()V

    .line 16
    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppKey(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/zte/aigc/utils/LogUtil;->DEBUG:Z

    const-string v6, "nubia"

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    .line 15
    invoke-static/range {v0 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "accountInstance ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nubiaCloud_account"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
