.class public Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;
.super Ljava/lang/Object;
.source "OnlineResourceUpdateList.java"


# instance fields
.field code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/OnlineResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field total:I


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

    .line 12
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/OnlineResourceItem;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->total:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/OnlineResourceItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/OnlineResourceUpdateList;->total:I

    return-void
.end method
