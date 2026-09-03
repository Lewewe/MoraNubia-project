.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseLoginController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseLoginController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/LoginResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTH_INFO_LENGTH:I = 0x10

.field private static final AUTH_SUFFIX_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method

.method private formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-le p0, v1, :cond_0

    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ge p0, v1, :cond_1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v1, p0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "dDebug"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public fetchSsoInfo(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)Ljava/lang/String;
    .locals 6

    .line 55
    instance-of v0, p1, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 61
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "token_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "&time="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 62
    new-instance v2, Lcn/nubia/redmagickyi/network/AesCbc128;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/network/AesCbc128;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, v0, p1}, Lcn/nubia/redmagickyi/network/AesCbc128;->cbcEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public load()Lcn/nubia/redmagickyi/network/controller/BaseLoginController;
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;->load(Z)Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    move-result-object p0

    return-object p0
.end method

.method public load(Z)Lcn/nubia/redmagickyi/network/controller/BaseLoginController;
    .locals 2

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseLoginController;Lcn/nubia/redmagickyi/network/controller/BaseLoginController$1;)V

    .line 22
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;->setSyncRequest(Z)V

    .line 23
    const-class p1, Lcn/nubia/redmagickyi/network/model/LoginResponse;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;->load()Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    move-result-object p0

    return-object p0
.end method
