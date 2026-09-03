.class public Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;
.super Ljava/lang/Object;
.source "SkinExchangeResponse.java"


# static fields
.field public static final TYPE_ERROR_BY_ACHIEVEMENT_POINT_LACK:I = 0x99

.field public static final TYPE_ERROR_BY_CODE_ERROR:I = 0x9a

.field public static final TYPE_ERROR_BY_CODE_INVALID:I = 0x9d

.field public static final TYPE_ERROR_BY_CODE_OPERATING:I = 0x9b

.field public static final TYPE_ERROR_BY_CODE_REDEEMED:I = 0x9e

.field public static final TYPE_ERROR_BY_CODE_UNNORMAL:I = 0x9c


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;->code:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;->message:Ljava/lang/String;

    return-void
.end method
