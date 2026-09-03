.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;
.source "StaticsBean.java"


# instance fields
.field private fileMd5:Ljava/lang/String;

.field private fileSize:J

.field private fileUrl:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getFileMd5()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->fileMd5:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->fileSize:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->fileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->thumbnailUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->fileMd5:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->fileSize:J

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->title:Ljava/lang/String;

    return-void
.end method
