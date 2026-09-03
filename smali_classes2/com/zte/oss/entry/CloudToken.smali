.class public Lcom/zte/oss/entry/CloudToken;
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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiresIn()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/zte/oss/entry/CloudToken;->expiresIn:I

    return p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/oss/entry/CloudToken;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/zte/oss/entry/CloudToken;->userId:I

    return p0
.end method

.method public setExpiresIn(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/zte/oss/entry/CloudToken;->expiresIn:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/oss/entry/CloudToken;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/zte/oss/entry/CloudToken;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloudToken{userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/oss/entry/CloudToken;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/oss/entry/CloudToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/oss/entry/CloudToken;->expiresIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/oss/entry/CloudToken;->deviceId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
