.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;
.super Ljava/lang/Object;
.source "VideoListLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Video"
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private file_md5:Ljava/lang/String;

.field private file_size:J

.field private file_url:Ljava/lang/String;

.field private id:I

.field private publish_time:J

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;

.field private thumbnail_url:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
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
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->id:I

    .line 76
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->title:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->author:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->description:Ljava/lang/String;

    .line 79
    iput-wide p6, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->publish_time:J

    .line 80
    iput-object p8, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->thumbnail_url:Ljava/lang/String;

    .line 81
    iput-object p9, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_url:Ljava/lang/String;

    .line 82
    iput-wide p10, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_size:J

    .line 83
    iput-object p12, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_md5:Ljava/lang/String;

    .line 84
    iput-object p13, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_md5()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_size()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_size:J

    return-wide v0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_url:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 88
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->id:I

    return p0
.end method

.method public getPublish_time()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->publish_time:J

    return-wide v0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getThumbnail_url()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->thumbnail_url:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->author:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->description:Ljava/lang/String;

    return-void
.end method

.method public setFile_md5(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_md5:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(J)V
    .locals 0

    .line 148
    iput-wide p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_size:J

    return-void
.end method

.method public setFile_url(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->file_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->id:I

    return-void
.end method

.method public setPublish_time(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->publish_time:J

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->tags:Ljava/util/List;

    return-void
.end method

.method public setThumbnail_url(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->thumbnail_url:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->title:Ljava/lang/String;

    return-void
.end method
