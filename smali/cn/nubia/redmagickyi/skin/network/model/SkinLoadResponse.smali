.class public Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;
.super Ljava/lang/Object;
.source "SkinLoadResponse.java"


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private total:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->code:I

    .line 13
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->message:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->total:I

    .line 15
    iput-object p4, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->total:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->total:I

    return-void
.end method
