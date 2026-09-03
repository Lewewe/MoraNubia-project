.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;
.super Ljava/lang/Object;
.source "ImageViewerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewerHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createImageDraggableParamsWithWHRadio(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;
    .locals 17

    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 119
    new-array v1, v1, [I

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 123
    aget v2, v1, v2

    .line 124
    new-instance v10, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    new-instance v6, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {v6, v1, v2, v3, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;-><init>(IIII)V

    move-object v3, v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;JZ)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v10, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    move-object v11, v10

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 129
    :goto_0
    invoke-virtual {v10}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->adjustImageUrl()V

    return-object v10
.end method

.method public static createImages(Landroid/content/Context;Ljava/util/List;IZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;

    invoke-direct {v2, v1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    invoke-static {p0, p1, v0, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImagesWithSingleView(Landroid/content/Context;Landroid/view/View;Ljava/util/List;IZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;

    move-result-object p0

    return-object p0
.end method

.method public static createImages(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;",
            ">;IZ)",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;"
        }
    .end annotation

    .line 80
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 86
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;

    if-eqz p1, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    iget-object v4, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    iget-object v5, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    iget-wide v6, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->imgSize:J

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImageDraggableParamsWithWHRadio(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_1
    iget-object v3, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    iget-object v4, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    iget-wide v5, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->imgSize:J

    const/4 v2, 0x0

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImageDraggableParamsWithWHRadio(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;

    invoke-direct {p1, p0, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;-><init>(Ljava/util/ArrayList;I)V

    return-object p1
.end method

.method public static createImagesWithSingleView(Landroid/content/Context;Landroid/view/View;Ljava/util/List;IZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;",
            ">;IZ)",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;"
        }
    .end annotation

    .line 97
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 102
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 103
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;

    if-eqz p1, :cond_1

    if-ne v0, p3, :cond_1

    .line 105
    iget-object v3, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    iget-object v4, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    iget-wide v5, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->imgSize:J

    move-object v2, p1

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImageDraggableParamsWithWHRadio(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_1
    iget-object v3, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->originUrl:Ljava/lang/String;

    iget-object v4, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->thumbnailUrl:Ljava/lang/String;

    iget-wide v5, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;->imgSize:J

    const/4 v2, 0x0

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImageDraggableParamsWithWHRadio(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;

    invoke-direct {p1, p0, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;-><init>(Ljava/util/ArrayList;I)V

    return-object p1
.end method

.method public static createSimpleImage(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;Landroid/view/View;Z)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
    .locals 1

    if-eqz p2, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 76
    invoke-static {p0, v0, p2, p1, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImages(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;

    move-result-object p0

    return-object p0
.end method

.method public static createSimpleImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
    .locals 2

    if-eqz p3, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;

    invoke-direct {v1, p2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 55
    invoke-static {p0, v0, p3, p1, p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createImages(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IZ)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;

    move-result-object p0

    return-object p0
.end method
