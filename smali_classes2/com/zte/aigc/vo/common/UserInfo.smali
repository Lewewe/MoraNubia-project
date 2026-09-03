.class public Lcom/zte/aigc/vo/common/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private id:I

.field private nubiaUid:Ljava/lang/String;

.field private zteUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/zte/aigc/vo/common/UserInfo;->id:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/zte/aigc/vo/common/UserInfo;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/zte/aigc/vo/common/UserInfo;->id:I

    return p0
.end method

.method public getNubiaUid()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aigc/vo/common/UserInfo;->nubiaUid:Ljava/lang/String;

    return-object p0
.end method

.method public getZteUid()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/zte/aigc/vo/common/UserInfo;->zteUid:I

    return p0
.end method

.method public setId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/aigc/vo/common/UserInfo;->id:I

    return-void
.end method

.method public setNubiaUid(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aigc/vo/common/UserInfo;->nubiaUid:Ljava/lang/String;

    return-void
.end method

.method public setZteUid(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/zte/aigc/vo/common/UserInfo;->zteUid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
