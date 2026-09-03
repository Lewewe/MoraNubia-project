.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;
.super Ljava/lang/Object;
.source "DraggableImageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public draggableInfo:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

.field public imageCanDown:Z

.field public imageSize:J

.field public originImg:Ljava/lang/String;

.field public thumbnailImg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    .line 14
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->draggableInfo:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->imageSize:J

    .line 22
    iput-boolean p5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->imageCanDown:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;JZ)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    .line 14
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->draggableInfo:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    .line 29
    iput-wide p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->imageSize:J

    .line 30
    iput-boolean p6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->imageCanDown:Z

    return-void
.end method


# virtual methods
.method public adjustImageUrl()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->originImg:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->thumbnailImg:Ljava/lang/String;

    :goto_0
    return-void
.end method
