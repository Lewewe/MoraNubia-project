.class public Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;
.super Ljava/lang/Object;
.source "EmailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/EmailResponse;
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

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/EmailResponse;

.field private title:Ljava/lang/String;

.field private user_email_status:I


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/EmailResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachment_file_md5()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->attachment_file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getAttachment_file_size()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->attachment_file_size:J

    return-wide v0
.end method

.method public getAttachment_url()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->attachment_url:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 55
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->id:I

    return p0
.end method

.method public getPublish_time()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->publish_time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_email_status()I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->user_email_status:I

    return p0
.end method

.method public setAttachment_file_md5(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->attachment_file_md5:Ljava/lang/String;

    return-void
.end method

.method public setAttachment_file_size(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->attachment_file_size:J

    return-void
.end method

.method public setAttachment_url(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->attachment_url:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->author:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->id:I

    return-void
.end method

.method public setPublish_time(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->publish_time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->title:Ljava/lang/String;

    return-void
.end method

.method public setUser_email_status(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailResponse$Data;->user_email_status:I

    return-void
.end method
