.class public Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;
.super Ljava/lang/Object;
.source "SkinDetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->code:I

    .line 10
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->message:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->data:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->data:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->data:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->message:Ljava/lang/String;

    return-void
.end method
