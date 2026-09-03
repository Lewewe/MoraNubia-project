.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;
.super Ljava/lang/Object;
.source "VideoListLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;",
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
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->code:I

    .line 15
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->message:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->total:I

    .line 17
    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->total:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->total:I

    return-void
.end method
