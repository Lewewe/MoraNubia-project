.class public Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;->message:Ljava/lang/String;

    return-void
.end method
