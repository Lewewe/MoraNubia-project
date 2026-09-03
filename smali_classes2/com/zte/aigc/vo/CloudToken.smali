.class public Lcom/zte/aigc/vo/CloudToken;
.super Ljava/lang/Object;
.source "CloudToken.java"


# instance fields
.field private deviceId:I

.field private expiresIn:I

.field private token:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiresIn()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/zte/aigc/vo/CloudToken;->expiresIn:I

    return p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aigc/vo/CloudToken;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/zte/aigc/vo/CloudToken;->userId:I

    return p0
.end method

.method public setExpiresIn(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/zte/aigc/vo/CloudToken;->expiresIn:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aigc/vo/CloudToken;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/zte/aigc/vo/CloudToken;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
