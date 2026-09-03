.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;
.super Ljava/lang/Object;
.source "ImageViewerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public imgSize:J

.field public originUrl:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    .line 43
    iput-wide p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->imgSize:J

    return-void
.end method
