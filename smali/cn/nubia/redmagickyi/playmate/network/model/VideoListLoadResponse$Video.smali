.class public Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;
.super Ljava/lang/Object;
.source "VideoListLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Video"
.end annotation


# instance fields
.field private file_md5:Ljava/lang/String;

.field private file_size:J

.field private file_url:Ljava/lang/String;

.field private id:I

.field private res_code:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;IILjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->this$0:Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p2, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->id:I

    .line 66
    iput p3, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->res_code:I

    .line 67
    iput-object p4, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_url:Ljava/lang/String;

    .line 68
    iput-wide p5, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_size:J

    .line 69
    iput-object p7, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_md5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile_md5()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_size()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_size:J

    return-wide v0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_url:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->id:I

    return p0
.end method

.method public getRes_code()I
    .locals 0

    .line 81
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->res_code:I

    return p0
.end method

.method public setFile_md5(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_md5:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_size:J

    return-void
.end method

.method public setFile_url(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->file_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->id:I

    return-void
.end method

.method public setRes_code(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->res_code:I

    return-void
.end method
