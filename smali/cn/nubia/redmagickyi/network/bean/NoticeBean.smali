.class public Lcn/nubia/redmagickyi/network/bean/NoticeBean;
.super Ljava/lang/Object;
.source "NoticeBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/bean/NoticeBean$Type;
    }
.end annotation


# static fields
.field public static final TYPE_ACTIVITY:I = 0x1

.field public static final TYPE_NOTICE:I = 0x2


# instance fields
.field private begin:J

.field private content:Ljava/lang/String;

.field private end:J

.field private id:I

.field private imagePath:Ljava/lang/String;

.field private publishTime:Ljava/lang/String;

.field private thumbPath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->id:I

    .line 32
    iput p2, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->type:I

    .line 33
    iput-object p3, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->title:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->content:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->publishTime:Ljava/lang/String;

    .line 36
    iput-wide p6, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->begin:J

    .line 37
    iput-wide p8, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->end:J

    .line 38
    iput-object p10, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->thumbPath:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBegin()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->begin:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getEnd()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->end:J

    return-wide v0
.end method

.method public getId()I
    .locals 0

    .line 43
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->id:I

    return p0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->publishTime:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->thumbPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 52
    iget p0, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->type:I

    return p0
.end method

.method public setBegin(J)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->begin:J

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setEnd(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->end:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->id:I

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->thumbPath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->type:I

    return-void
.end method
