.class public Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;
.super Ljava/lang/Object;
.source "VideoListOnlineBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;
    }
.end annotation


# instance fields
.field private data:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->data:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->data:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->data:Ljava/util/Vector;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 13
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->total:I

    return p0
.end method

.method public setTotal(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->total:I

    return-void
.end method
