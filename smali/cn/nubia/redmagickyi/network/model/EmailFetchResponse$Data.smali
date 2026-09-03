.class public Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;
.super Ljava/lang/Object;
.source "EmailFetchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private attachment_file_md5:Ljava/lang/String;

.field private attachment_file_size:J

.field private attachment_url:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id:I

.field private publish_time:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachment_file_md5()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->attachment_file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getAttachment_file_size()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->attachment_file_size:J

    return-wide v0
.end method

.method public getAttachment_url()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->attachment_url:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 45
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->id:I

    return p0
.end method

.method public getPublish_time()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->publish_time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAttachment_file_md5(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->attachment_file_md5:Ljava/lang/String;

    return-void
.end method

.method public setAttachment_file_size(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->attachment_file_size:J

    return-void
.end method

.method public setAttachment_url(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->attachment_url:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->author:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->id:I

    return-void
.end method

.method public setPublish_time(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->publish_time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->title:Ljava/lang/String;

    return-void
.end method
