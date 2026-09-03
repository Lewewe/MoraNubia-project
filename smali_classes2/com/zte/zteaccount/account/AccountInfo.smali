.class public Lcom/zte/zteaccount/account/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected email:Ljava/lang/String;

.field protected mobile:Ljava/lang/String;

.field protected nickName:Ljava/lang/String;

.field protected tokenId:Ljava/lang/String;

.field protected userId:Ljava/lang/String;

.field protected userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->userId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/zte/zteaccount/account/AccountInfo;->userName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/zte/zteaccount/account/AccountInfo;->tokenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/zteaccount/account/AccountInfo;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/zteaccount/account/AccountInfo;->mobile:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/zteaccount/account/AccountInfo;->nickName:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zte/zteaccount/account/AccountInfo;->tokenId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/zteaccount/account/AccountInfo;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/zteaccount/account/AccountInfo;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->tokenId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/zteaccount/account/AccountInfo;->userName:Ljava/lang/String;

    return-void
.end method
