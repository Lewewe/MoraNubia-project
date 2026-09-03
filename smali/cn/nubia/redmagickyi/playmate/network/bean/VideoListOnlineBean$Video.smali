.class public Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;
.super Ljava/lang/Object;
.source "VideoListOnlineBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field private id:I

.field private resCode:I

.field private videoMd5:Ljava/lang/String;

.field private videoSize:J

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->id:I

    return p0
.end method

.method public getResCode()I
    .locals 0

    .line 49
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->resCode:I

    return p0
.end method

.method public getVideoMd5()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->videoMd5:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSize()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->videoSize:J

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->id:I

    return-void
.end method

.method public setResCode(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->resCode:I

    return-void
.end method

.method public setVideoMd5(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->videoMd5:Ljava/lang/String;

    return-void
.end method

.method public setVideoSize(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->videoSize:J

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->videoUrl:Ljava/lang/String;

    return-void
.end method
