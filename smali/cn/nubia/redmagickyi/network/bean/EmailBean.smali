.class public Lcn/nubia/redmagickyi/network/bean/EmailBean;
.super Ljava/lang/Object;
.source "EmailBean.java"


# instance fields
.field private attachmentSize:J

.field private attachmentUrl:Ljava/lang/String;

.field private attatchCheckSum:Ljava/lang/String;

.field private attatchPath:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field id:I

.field private publishTime:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->id:I

    .line 48
    iput-object p2, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->title:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->content:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->publishTime:Ljava/lang/String;

    .line 51
    iput p6, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->status:I

    .line 52
    iput-object p7, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attatchPath:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attatchCheckSum:Ljava/lang/String;

    .line 54
    iput-wide p10, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attachmentSize:J

    .line 55
    iput-object p3, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->author:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attachmentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttachmentSize()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attachmentSize:J

    return-wide v0
.end method

.method public getAttachmentUrl()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attachmentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getAttatchCheckSum()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attatchCheckSum:Ljava/lang/String;

    return-object p0
.end method

.method public getAttatchPath()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attatchPath:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 64
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->id:I

    return p0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->publishTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 80
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->status:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public isRead()Z
    .locals 1

    .line 104
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAttachmentSize(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attachmentSize:J

    return-void
.end method

.method public setAttachmentUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attachmentUrl:Ljava/lang/String;

    return-void
.end method

.method public setAttatchCheckSum(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attatchCheckSum:Ljava/lang/String;

    return-void
.end method

.method public setAttatchPath(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->attatchPath:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->id:I

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setRead()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->status:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;->title:Ljava/lang/String;

    return-void
.end method
