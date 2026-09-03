.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;
.super Ljava/lang/Object;
.source "WallPaperListLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wallpaper"
.end annotation


# instance fields
.field private audible:I

.field private file_md5:Ljava/lang/String;

.field private file_size:J

.field private file_url:Ljava/lang/String;

.field private id:I

.field private scene_name:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

.field private thumbnail_url:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->id:I

    .line 72
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->title:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->audible:I

    .line 74
    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->scene_name:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->thumbnail_url:Ljava/lang/String;

    .line 76
    iput-object p7, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_url:Ljava/lang/String;

    .line 77
    iput-object p8, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_md5:Ljava/lang/String;

    .line 78
    iput-wide p9, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_size:J

    return-void
.end method


# virtual methods
.method public getAudible()I
    .locals 0

    .line 98
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->audible:I

    return p0
.end method

.method public getFile_md5()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_size()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_size:J

    return-wide v0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_url:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 82
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->id:I

    return p0
.end method

.method public getScene_name()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->scene_name:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail_url()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->thumbnail_url:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAudible(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->audible:I

    return-void
.end method

.method public setFile_md5(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_md5:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_size:J

    return-void
.end method

.method public setFile_url(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->file_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->id:I

    return-void
.end method

.method public setScene_name(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->scene_name:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail_url(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->thumbnail_url:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->title:Ljava/lang/String;

    return-void
.end method
