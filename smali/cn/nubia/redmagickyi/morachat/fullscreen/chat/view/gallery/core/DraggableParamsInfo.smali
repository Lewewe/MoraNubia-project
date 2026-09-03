.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;
.super Ljava/lang/Object;
.source "DraggableParamsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_RADIO:F = -1.0f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public scaledViewWhRadio:F

.field public viewHeight:I

.field public viewLeft:I

.field public viewTop:I

.field public viewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewLeft:I

    .line 13
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewTop:I

    .line 14
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewWidth:I

    .line 15
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->scaledViewWhRadio:F

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->scaledViewWhRadio:F

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewLeft:I

    .line 22
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewTop:I

    .line 23
    iput p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewWidth:I

    .line 24
    iput p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewHeight:I

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 28
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->viewHeight:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->scaledViewWhRadio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
