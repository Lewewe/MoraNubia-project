.class public Lcn/nubia/redmagickyi/network/bean/EmailListBean;
.super Ljava/lang/Object;
.source "EmailListBean.java"


# instance fields
.field email_id_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field status:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->status:I

    .line 19
    iput-object p2, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->email_id_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEmail_id_list()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->email_id_list:Ljava/util/List;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 34
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->status:I

    return p0
.end method

.method public listToString()Ljava/lang/String;
    .locals 6

    .line 23
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->email_id_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 24
    const-string p0, ""

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->email_id_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 29
    iget-object v4, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->email_id_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setEmail_id_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->email_id_list:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->status:I

    return-void
.end method
