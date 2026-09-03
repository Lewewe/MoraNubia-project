.class public Lcn/nubia/redmagickyi/network/model/EmailResponse;
.super Ljava/lang/Object;
.source "EmailResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 96
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 104
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->total:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse;->total:I

    return-void
.end method
