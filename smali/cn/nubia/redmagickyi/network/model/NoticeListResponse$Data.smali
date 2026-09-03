.class public Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;
.super Ljava/lang/Object;
.source "NoticeListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/NoticeListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private begin_time:J

.field private content:Ljava/lang/String;

.field private content_type:I

.field private end_time:J

.field private id:I

.field private image_url:Ljava/lang/String;

.field private publish_time:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/NoticeListResponse;

.field private thumbnail_url:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/NoticeListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/NoticeListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getBegin_time()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->begin_time:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getContent_type()I
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->content_type:I

    return p0
.end method

.method public getEnd_time()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->end_time:J

    return-wide v0
.end method

.method public getId()I
    .locals 0

    .line 48
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->id:I

    return p0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->image_url:Ljava/lang/String;

    return-object p0
.end method

.method public getPublish_time()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->publish_time:J

    return-wide v0
.end method

.method public getThumbnail_url()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->thumbnail_url:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/NoticeListResponse$Data;->title:Ljava/lang/String;

    return-object p0
.end method
