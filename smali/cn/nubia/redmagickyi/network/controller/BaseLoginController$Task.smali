.class Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/controller/BaseLoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/LoginResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/controller/BaseLoginController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseLoginController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseLoginController;Lcn/nubia/redmagickyi/network/controller/BaseLoginController$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseLoginController;)V

    return-void
.end method


# virtual methods
.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 6

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    sget-object v2, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;->fetchSsoInfo(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)Ljava/lang/String;

    move-result-object p0

    .line 33
    sget-object v2, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    invoke-virtual {v1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_0
    new-instance v2, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user/login_by_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v3, "token"

    .line 35
    invoke-virtual {v2, v3, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v1

    const-string v2, "inputs"

    .line 36
    invoke-virtual {v1, v2, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    const-string v1, "time"

    .line 37
    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method
