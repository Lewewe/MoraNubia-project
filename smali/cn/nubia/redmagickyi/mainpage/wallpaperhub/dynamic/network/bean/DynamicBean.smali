.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;
.source "DynamicBean.java"


# instance fields
.field private fileMd5:Ljava/lang/String;

.field private fileSize:J

.field private fileUrl:Ljava/lang/String;

.field private hasVoice:Z

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getFileMd5()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->fileMd5:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->fileSize:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->fileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->thumbnailUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public isHasVoice()Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->hasVoice:Z

    return p0
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->fileMd5:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->fileSize:J

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setHasVoice(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->hasVoice:Z

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->title:Ljava/lang/String;

    return-void
.end method
