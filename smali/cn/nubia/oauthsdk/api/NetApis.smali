.class public Lcn/nubia/oauthsdk/api/NetApis;
.super Ljava/lang/Object;
.source "NetApis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;
    }
.end annotation


# static fields
.field private static mInstance:Lcn/nubia/oauthsdk/api/NetApis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/oauthsdk/api/NetApis;
    .locals 2

    .line 17
    sget-object v0, Lcn/nubia/oauthsdk/api/NetApis;->mInstance:Lcn/nubia/oauthsdk/api/NetApis;

    if-nez v0, :cond_0

    .line 18
    const-class v0, Lcn/nubia/oauthsdk/api/NetApis;

    monitor-enter v0

    .line 19
    :try_start_0
    new-instance v1, Lcn/nubia/oauthsdk/api/NetApis;

    invoke-direct {v1}, Lcn/nubia/oauthsdk/api/NetApis;-><init>()V

    sput-object v1, Lcn/nubia/oauthsdk/api/NetApis;->mInstance:Lcn/nubia/oauthsdk/api/NetApis;

    .line 20
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_0
    :goto_0
    sget-object v0, Lcn/nubia/oauthsdk/api/NetApis;->mInstance:Lcn/nubia/oauthsdk/api/NetApis;

    return-object v0
.end method


# virtual methods
.method public getCode(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/nubia/oauthsdk/api/NetResponse;"
        }
    .end annotation

    .line 118
    :try_start_0
    const-string p0, "/oauth2/code"

    invoke-static {p0, p1}, Lcn/nubia/oauthsdk/api/HttpPostGet;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 122
    :goto_0
    invoke-static {p0}, Lcn/nubia/oauthsdk/api/NetResponse;->parse(Ljava/lang/String;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object p0

    return-object p0
.end method

.method public getCode(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "Lcn/nubia/oauthsdk/api/NetResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcn/nubia/oauthsdk/api/NetApis$4;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$4;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 111
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getImplicit(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "Lcn/nubia/oauthsdk/api/NetResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lcn/nubia/oauthsdk/api/NetApis$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$1;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 42
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getOpenUserInfo(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "Lcn/nubia/oauthsdk/api/NetResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lcn/nubia/oauthsdk/api/NetApis$2;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$2;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 59
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getUserInfo(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "Lcn/nubia/oauthsdk/api/NetResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcn/nubia/oauthsdk/api/NetApis$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$3;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 76
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getUserProfile(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "Lcn/nubia/oauthsdk/api/NetResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Lcn/nubia/oauthsdk/api/NetApis$6;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$6;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 167
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getZteUid(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/nubia/oauthsdk/api/NetResponse;"
        }
    .end annotation

    .line 85
    :try_start_0
    const-string p0, "/oauth2/profile/zid"

    invoke-static {p0, p1}, Lcn/nubia/oauthsdk/api/HttpPostGet;->doGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcn/nubia/oauthsdk/api/NetResponse;->parse(Ljava/lang/String;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public loginBindSignIn(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    new-instance v0, Lcn/nubia/oauthsdk/api/NetApis$5;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$5;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 141
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
